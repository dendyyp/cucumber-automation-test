Youtap Indonesia Assessment

## Test Analysis

You can check the analysis that I did on Youtap Pos app in the `test_analysis.md` files

## Automation Script

### Prerequisite
1. Ruby (Make sure you already installed ruby. To check installed ruby you can using this command `$rvm list`)
2. Cucumber (Make sure you already installed cucumber. To check you can using this command `$cucumber --version`)
3. Editor (Visual Studio Code)

### How to run this automation scenarios in local
1. Clone this repo using this command:
>$ git clone https://github.com/dendyyp/cucumber-automation-test.git
2. Open this repo in your editor
3. Open terminal in your editor
4. To run scenario can using this command:
>$ cucumber

### Run in local results (terminal)
<img width="934" alt="Screen Shot 2022-10-21 at 20 13 21" src="https://user-images.githubusercontent.com/45061250/197204184-4e424029-7d05-4676-bddc-ceb9ebf5e23f.png">

### Running automation evidence (user interface)
https://user-images.githubusercontent.com/45061250/197205219-5963e9c0-ad83-42c7-a947-e5416836b333.mov

### Test case
You can see the test case on `login.feature` in support folder. There are 2 test cases that I've been created:
1. Happy flow
   
   User login using valid credential and user redirect to Youtap dashboard
2. Negative case

   User login using invalid credential, error message appear, and user failed to login
