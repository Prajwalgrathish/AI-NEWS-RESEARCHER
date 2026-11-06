@echo off
cd /d "C:\Users\sampa\Downloads\AI RESEARCH NEWS" || exit /b 1

if not exist logs mkdir logs

uv run jupyter nbconvert --to notebook --execute "AI_News.ipynb" --output "AI_News_executed.ipynb" --ExecutePreprocessor.timeout=3600 >> "logs\weekly_run.log" 2>&1