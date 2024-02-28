function regulizeData_wrapper(baseDir, outputDir, T_p, t, h_T, numOfSlice, numOfPeriod, numOfImage)

    if exist(outputDir,'dir') == 7     
        disp('output folder exist, result will be overwritten, press any key to continue, ctrl+c to abort');
        pause;
        rmdir(outputDir, 's');
    end
    mkdir(outputDir);  

    for i = 1:numOfSlice
        mkdir([outputDir '\bySlice\' int2str(i)]);
        imageList = dir([baseDir '\' int2str(i) '\*.tif']);
        tempIMG = imread([baseDir '\' int2str(i) '\' imageList(1).name]); % read in one image
        [height, width] = size(tempIMG); % get the height and length of the images  
        images= zeros( height , width , floor(numOfPeriod*T_p/h_T)+2 , 'uint16' );       
        count = 1;
        %% align all slice
        for j = t(i)+1 : t(i)+1+floor(numOfPeriod*T_p/h_T)
            images(:,:,count) = imread([baseDir '\' int2str(i) '\' imageList(j).name]);            
            count = count + 1;
        end       
        %% save resample data(temporarily)         
        [images_resampled] = getResample(images, T_p , numOfPeriod , numOfImage, h_T );
        for j = 1:numOfImage
            imwrite(uint16(images_resampled(:,:,j)),[outputDir '\bySlice\' int2str(i) '\' int2str(j) '.tif']);
        end         
    end