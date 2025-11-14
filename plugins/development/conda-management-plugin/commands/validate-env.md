# Validate Environment

Test a specified Conda environment to ensure it's working correctly and all key packages function properly.

Usage: /validate-env [environment_name]

Tasks:
1. Activate the specified environment
2. Verify Python interpreter is accessible
3. Test importing key packages (numpy, pandas, torch, etc.)
4. Check if GPU/ROCm is accessible (for environments with PyTorch/TensorFlow)
5. Run basic functionality tests for critical packages
6. Verify package versions match expected configurations
7. Check for import errors or warnings
8. Test package dependencies are satisfied
9. Verify environment can execute a simple test script
10. Check for any runtime configuration issues
11. Test ROCm/HIP functionality if applicable

Provide a comprehensive validation report with pass/fail status for each test and recommendations for fixing any issues found.
