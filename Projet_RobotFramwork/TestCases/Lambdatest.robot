*** Settings ***
Resource    ../Conf/Resources.txt
Test Setup   TestSetUp
Test Teardown  TestTearDown
*** Variables ***
${Lambdatest_url}    https://www.lambdatest.com
${navigateur}   chrome
${valeur_recherchee}   Cross Browser\nTesting Cloud
${Name}     Hakima
${Email}    hakima.tout3@gmail.com
${Password}     Hakimahakima
${Phone}        0699009901
${PhoneError}       Please enter your phone
${EmailVerification}        Please verify your email
*** Test Cases ***

TestLambdaAccueil
    OuvrirUrlLambda     ${Lambdatest_url}       ${navigateur}
    VerifierElement     ${TitrePage}        ${valeur_recherchee}
    CliquerButton       ${SignupButton}
    Remplirleschamps    ${Name}     ${Email}        ${Password}
    Sleep       3s
    RemplirPhone        ${Phone}
    CliquerButton       ${XpathFreeSignup}
    Sleep   7s
    VerifierElement    ${XpathVerificationEmail}       ${EmailVerification}
