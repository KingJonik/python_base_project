## Runs tests through pytest
## Tidies up created cache files
## Exits for pre-commit

pytest

# Check the exit code of pytest
if [ $? -ne 0 ]; then
    find . | grep -E "(/__pycache__$)|.pytest_cache" | xargs rm -rf
    echo "Tests failed."
    exit 1  # Exit with a non-zero status code to indicate failure
fi

echo "Tests passed"
find . | grep -E "(/__pycache__$)|.pytest_cache" | xargs rm -rf
exit 0  # Exit with a zero status code to indicate success
