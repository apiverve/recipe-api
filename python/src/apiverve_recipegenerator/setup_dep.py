from setuptools import setup, find_packages

setup(
    name='apiverve_recipegenerator',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Recipe Generator is an AI-powered tool for generating detailed recipes. It returns complete recipes with ingredients, instructions, prep time, cook time, and servings.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/recipe?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
