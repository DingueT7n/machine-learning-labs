# Machine Learning: Foundations & Applied Algorithms

Classical machine learning, statistical analysis, PCA, support vector machines, ensembles and recommendation systems.

**Author:** Mohammed Alaa Eddine GUERBOUZ  
**University:** University of Ghardaia, Department of Mathematics and Computer Science  
**Academic period:** 2023–2025 master coursework where confirmed; some items have unverified dates  
**Portfolio curated:** 2026

## What this work demonstrates

This repository preserves practical assignments and projects completed during the academic programme, reorganized by problem rather than original archive names. It contains actual submitted code and reports, enhanced notebook introductions and descriptive folder names. It is not a claim of recent creation or independent production deployment.

## Project catalog

### 2024-2025 · labs

| Work | Problem addressed |
|---|---|
| [Decision Tree Classification in R](labs/2024-2025/decision-trees-in-r/README.md) | Learn how hierarchical feature splits produce interpretable classifications. |
| [K-Nearest Neighbors in R](labs/2024-2025/knn-in-r/README.md) | Explore classification using neighboring observations. |
| [Regression: Age, Height and Lung Capacity](labs/2024-2025/linear-regression-height-lung-capacity/README.md) | Explore linear relationships and predict continuous outcomes from explanatory variables. |
| [PCA on Leaf Measurements](labs/2024-2025/pca-leaf-dataset/README.md) | Explore and visualize principal components of numeric leaf descriptors. |
| [PCA on Synthetic 3D Data](labs/2024-2025/pca-synthetic-data/README.md) | Reduce three-dimensional numeric data to principal components and visualize variance. |
| [Support Vector Machines for Digit Recognition](labs/2024-2025/svm-handwritten-digits/README.md) | Classify handwritten digits using traditional machine learning. |
### 2024-2025 · projects

| Work | Problem addressed |
|---|---|
| [Breast Cancer Classification with SVM](projects/2024-2025/breast-cancer-svm/README.md) | Compare approaches to classifying diagnostic observations. |
| [MNIST: PCA with Logistic Regression](projects/2024-2025/mnist-pca-logistic-regression/README.md) | Explore dimensionality reduction before handwritten digit classification. |
| [Movie Recommendations](projects/2024-2025/movie-recommendation-system/README.md) | Recommend movies using user interaction and film metadata. |
| [ORL Faces: PCA, SVM and Ensemble Methods](projects/2024-2025/orl-faces-ensemble-classification/README.md) | Study classification of face images with reduced-dimensional features. |
| [Spam Detection with Logistic Regression](projects/2024-2025/spam-detection-logistic-regression/README.md) | Classify messages or observations as spam versus non-spam. |
| [Titanic Survival: Ensemble Learning](projects/2024-2025/titanic-ensemble-learning/README.md) | Model survival outcome with combinations of tree-based learners. |
### undated · labs

| Work | Problem addressed |
|---|---|
| [Student Performance Analysis in R](labs/undated/student-performance-pca-r/README.md) | Investigate associations between study habits, scores and student performance. |

## Working with the notebooks

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
jupyter lab
```

Open and run a notebook from its project folder so relative paths work. Some datasets are not included; each experiment README identifies missing local or remotely downloaded inputs. GPU-enabled TensorFlow, older APIs and Colab-specific shell commands may require compatible environments. R coursework also requires R/RStudio and packages used by the original code.


## Notes about the original sources

- Original notebook **code cells were not refactored or rewritten**. A clearly labeled Markdown introduction was added to notebooks for provenance and readability.
- Original DOCX reports and supporting images were only renamed and moved; their content remains byte-for-byte identical.
- Some notebooks rely on missing datasets, local Windows paths, network downloads, old libraries or GPU resources and **have not been rerun or benchmarked**. No unverified accuracies are claimed.
- Notebook years in the original headers are usually **Master 1 2023–2024** or **Master 2 2024–2025**. Where the period is inferred from a neighboring numbered TP series or not explicit in a particular source notebook, the project README says so. Other dates are sourced from the original notebook headers.
- Review licenses/redistribution rights for third-party datasets before pushing publicly. Large binary datasets, generated artifacts and serialized R workspaces should not be committed without review.

For original filename-to-new-path tracking, see `PORTFOLIO_INVENTORY.csv` at the top level of the consolidated download (not included in this individual repository).
