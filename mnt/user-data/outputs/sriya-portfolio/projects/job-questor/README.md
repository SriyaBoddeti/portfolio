# Job Questor — AI Job Recommendation System

## Overview
An AI-powered job recommendation system that analyses resume data and matches candidates to suitable job roles using machine learning techniques.

## Problem Statement
Job seekers often struggle to find roles that match their actual skills. This system automates that matching using ML, saving time and improving recommendation accuracy.

## Features
- Resume parsing and feature extraction
- ML-based job-candidate matching
- Structured feature analysis for accuracy improvement
- Ranked job recommendations output

## Tech Stack
- Python
- Machine Learning (scikit-learn)
- NLP for resume parsing
- Pandas / NumPy for data handling

## How It Works
1. User uploads or inputs resume data
2. System extracts key features (skills, experience, education)
3. ML model matches features against job role database
4. Ranked list of recommended jobs is returned

## Project Structure
```
job-questor/
├── data/
│   └── job_roles.csv
├── model/
│   ├── train.py
│   └── recommend.py
├── utils/
│   └── resume_parser.py
├── main.py
└── README.md
```

## Setup & Run
```bash
# Install dependencies
pip install -r requirements.txt

# Run the recommendation system
python main.py
```

## Future Improvements
- Web interface using Django
- Real-time job scraping from LinkedIn/Naukri
- Feedback loop to improve recommendations over time

---
*Built by Sriya Boddeti*
