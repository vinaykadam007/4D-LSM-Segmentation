# 🫀 4D Microscopy Cardiac Nuclei Reconstruction & Segmentation

[![GitHub repo](https://img.shields.io/badge/GitHub-Project-green?logo=github)](https://github.com/vinaykadam007/4D-LSM-Segmentation)  
[![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python)](https://www.python.org/)  
[![Deep Learning](https://img.shields.io/badge/Deep%20Learning-3D%20Unet-orange)]()  
[![High-Performance Computing](https://img.shields.io/badge/Parallel-Computing-lightgrey)]()  

---

## 📌 Project Overview
This project focuses on **4D light-sheet fluorescence microscopy (LSFM)** for the reconstruction and segmentation of cardiac nuclei in zebrafish larvae. By integrating **parallel computing algorithms** with a **3D U-Net segmentation model**, the workflow enables high-resolution, high-speed analysis of myocardial mechanics. The approach significantly enhances visualization of cardiac function and allows efficient large-scale analysis of cellular dynamics.  

This work is based on and supported by the publication:  
**“4D Light-sheet imaging and interactive analysis of cardiac contractility in zebrafish larvae”** – *APL Bioengineering, 2023* ([DOI: 10.1063/5.0153214](https://doi.org/10.1063/5.0153214))【30†source】.

---

## 🎯 Objective & Outcome

- **Objective:**  
  Develop a parallelized reconstruction algorithm and 3D U-Net model for accurate segmentation of cardiomyocyte nuclei from 4D LSFM datasets, enabling functional assessment of myocardial mechanics at single-cell resolution.

- **Outcome:**  
  - Achieved **87% segmentation accuracy** of cardiac nuclei.  
  - Reduced reconstruction time from **3 hours to 20 minutes** via parallel computing (10× faster).  
  - Enhanced throughput and memory efficiency, enabling large-scale and real-time cardiac imaging analysis.  
  - Delivered improved visualization of cardiac contractility, aiding comprehensive analysis of myocardial development and regeneration【30†source】.

---

## ⚙️ Methodology

- **Data Acquisition:** Zebrafish larvae hearts imaged using LSFM, producing 4D datasets (~100GB per acquisition).  
- **Reconstruction:**  
  - Implemented a **parallel computation algorithm** for retrospective synchronization of cardiac cycles.  
  - Optimized memory allocation to prevent fragmentation during reconstruction.  
- **Segmentation:**  
  - Employed **3D U-Net** and **3DeeCellTracker** for nuclei segmentation and tracking.  
  - Leveraged spatial-spectral features to distinguish cardiomyocyte nuclei.  
- **Analysis:**  
  - Quantified myocardial displacement, velocity, and surface-area-to-volume ratios across cardiac phases.  
  - Integrated results into a VR-based visualization platform for interactive exploration of cardiomyocyte dynamics【30†source】.

---

## 📊 Results

| Feature                          | Previous Workflow | New Workflow |
|----------------------------------|------------------|--------------|
| Reconstruction Time              | ~3 hours         | **20 min**   |
| Segmentation Accuracy (3D U-Net) | –                | **87%**      |
| Throughput                       | Limited          | **10× higher**|
| Memory Efficiency                | Standard         | Optimized    |

**Key Insight:** By combining parallel computing with deep learning, this pipeline enables **scalable, high-throughput cardiac imaging analysis** that was previously infeasible in standard biomedical imaging workflows.

---

## 🚀 Getting Started

### Prerequisites
- Python 3.8+  
- PyTorch / TensorFlow  
- NumPy, OpenCV, Matplotlib  
- CUDA-enabled GPU for parallel training/reconstruction  

Install dependencies:
```bash
pip install -r requirements.txt
```

### Run Reconstruction
```bash
python src/reconstruct.py --input data/zebrafish_sample.lsm
```

### Run Segmentation
```bash
python src/segment.py --input results/reconstructed.nii.gz
```

---

## 📌 Future Work

- Extend segmentation to multi-channel fluorescence for endothelial and fibroblast tracking.  
- Integrate multi-view fusion & deconvolution for enhanced LSFM resolution.  
- Expand VR framework for real-time annotation and collaborative cardiac analysis.  

---

## 🙌 Acknowledgements
This work was conducted at the **Ding Lab, University of Texas at Dallas**, with contributions to imaging, algorithm development, and analysis from the collaborative research team.  

For reference, please cite:  
> X. Zhang, M. Almasian, S. Hassan, R. Jotheesh, V. A. Kadam, et al.,  
> *4D Light-sheet imaging and interactive analysis of cardiac contractility in zebrafish larvae*, APL Bioengineering 7, 026112 (2023).  
> DOI: [10.1063/5.0153214](https://doi.org/10.1063/5.0153214)

---

✨ If you find this project useful, please ⭐ the repo and share with the research community!
