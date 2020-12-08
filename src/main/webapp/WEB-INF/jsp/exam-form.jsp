<jsp:include page="header.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: Bibash Bogati
  Date: 11/11/2020
  Time: 8:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
           background-color: beige;
        }
    </style>
</head>
<body>
<div class="">
    <input value="${userId}" id="userId" hidden>
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="data:image/png;base64,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" alt="" width="72" height="72">
        <h2>Driving Exam form</h2>
        <p class="lead">Below is a question list of driving exam. please Select one correct answer</p>
    </div>

    <div class="row" style="padding-left: 100px; background-color: white">
        <div class="col-md-3 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Correct Answers</span>
                <span class="badge badge-secondary badge-pill">3</span>
            </h4>
            <ul class="list-group mb-3" style="display: none" id="correct-answer">
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.1</span>
                        <small class="text-muted"></small>
                    </div>
                    <h6 class="text-muted">(c).ministry of transport</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.2</span>
                    </div>
                    <h6 class="text-muted">(d) by using brake</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.3</span>
                    </div>
                    <h6 class="text-muted">(c) To get the vehicle slow </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.4</span>
                    </div>
                    <h6 class="text-muted">(a) full tank  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.5</span>
                    </div>
                    <h6 class="text-muted">(c) Written exam and trial </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.6</span>
                    </div>
                    <h6 class="text-muted">(d) Distillated water  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.7</span>
                    </div>
                    <h6 class="text-muted">(d) All the above  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.8</span>
                    </div>
                    <h6 class="text-muted">(a) Private tempo </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.9</span>
                    </div>
                    <h6 class="text-muted">(b) Self starter </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.10</span>
                    </div>
                    <h6 class="text-muted">(b) Stop and ready to go  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.11</span>
                    </div>
                    <h6 class="text-muted">(d) All above </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.12</span>
                    </div>
                    <h6 class="text-muted">(d) Two rear wheel  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.13</span>
                    </div>
                    <h6 class="text-muted">(d) Side light on left   </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.14</span>
                    </div>
                    <h6 class="text-muted">(d) dept. of transport management</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.15</span>
                    </div>
                    <h6 class="text-muted">(d) Suitable gear </h6>
                </li>
            </ul>

            <li class="list-group-item d-flex justify-content-between" id="no-answer">
                <span>N/A</span>
                <strong>Answers aren't available</strong>
            </li>
        </div>

        <div class="col-md-9" id="questions" style="border: double; overflow: scroll">
            <h4 class="mb-3 text-center p-0">Driving Exam</h4>
            <div class="row mb-2">
                <div class="col-md-12 mb-3">
                    <label>1.Motor and Transport Management is under which ministry?</label>
                    <div class="d-block my-3">
                        <div class="custom-control custom-radio">
                            <input id="ministryOfLabourTransport" name="paymentMethod" type="radio"
                                   class="custom-control-input" value="a. Construction and ministry of transport"
                                   required>
                            <label class="custom-control-label d-inline-flex" for="ministryOfLabourTransport">
                                a. Construction and ministry of transport
                            </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" value=" b.Ministry of labour and transport management" class="custom-control-input" id="ministryOfLabour">
                                <label class="custom-control-label d-inline-flex" for="ministryOfLabour">
                                    b.Ministry of labour and transport management
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" class="custom-control-input" value="c.ministry of transport" required id="ministryOfTransport">
                                <label class="custom-control-label d-inline-flex" for="ministryOfTransport" >
                                    c.ministry of transport
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" class="custom-control-input" id="allAnswer" value="d. all of the above">
                                <label class="custom-control-label d-inline-flex" for="allAnswer">
                                    d. all of the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >2. How do you start your vehicle ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="checkFuel" name="vehicleStart" type="radio" class="custom-control-input" value=" a. By checking fuel" required>
                                <label class="custom-control-label d-inline-flex" for="checkFuel">
                                    a. By checking fuel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="checkingGear" name="vehicleStart" type="radio" value="b. By checking gear" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="checkingGear">
                                    b. By checking gear
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="usingBreak" name="vehicleStart" value="c. By using brake" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="usingBreak">
                                    c. By using brake
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allAbove" name="vehicleStart" type="radio" class="custom-control-input" value="d. All of the above">
                                <label class="custom-control-label d-inline-flex" for="allAbove">
                                    d. All of the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>3.What is the job of brake?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="stopVehicle" name="brakeJob" type="radio" class="custom-control-input" value="a.To stop the vehicle" required>
                                <label class="custom-control-label d-inline-flex" for="stopVehicle">
                                    a.To stop the vehicle
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="toLight" name="brakeJob" type="radio" value="b.To light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="toLight">
                                    b.To light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="slowDown" name="brakeJob" type="radio" class="custom-control-input" value="c. To get the vehicle slow">
                                <label class="custom-control-label d-inline-flex" for="slowDown">
                                    c. To get the vehicle slow
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="speedVehicle" value="d. To speed up the vehicle." name="brakeJob" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="speedVehicle">
                                    d. To speed up the vehicle.
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>4.How much fuel should be kept on the vehicle ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="full" name="fuelQuantity" type="radio" class="custom-control-input" value="a. Full tank" required>
                                <label class="custom-control-label d-inline-flex" for="full">
                                    a. Full tank
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="half" name="fuelQuantity" type="radio" value="b. Half tank" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="half">
                                    b. Half tank
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="any" name="fuelQuantity" type="radio" value="c. How much we like" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="any">
                                    c. How much we like
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allAboves" name="fuelQuantity" type="radio" class="custom-control-input" value="d. All the above" required>
                                <label class="custom-control-label d-inline-flex" for="allAboves">
                                    d. All the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>5.Which exam needs to be passed for taking driving liscense ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="written" name="exam" type="radio" class="custom-control-input" value="a. Written" required>
                                <label class="custom-control-label d-inline-flex" for="written">
                                    a. Written
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="trial" name="exam" type="radio" value="b. Trial" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="trial">
                                    b. Trial
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="writtenTrial" name="exam" value="c. Written exam and trial" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="writtenTrial">
                                    c. Written exam and trial
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allExam" name="exam" value="d. All above " type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allExam">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >6. What should be put when the level of acid in battery goes down ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="water" name="acidLevel" type="radio" class="custom-control-input" value="a. Water" required>
                                <label class="custom-control-label d-inline-flex" for="water">
                                    a. Water
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="kerosene" name="acidLevel" type="radio" value="B. kerosene" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="kerosene">
                                    B. kerosene
                                </label>
                            </div>
                            <div  class="custom-control custom-radio">
                                <input id="petrol" name="acidLevel" value="c. petrol" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="petrol">
                                    c. petrol
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="distillated" name="acidLevel" value="d. Distillated water" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="distillated">
                                    d. Distillated water
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >7. What is needed while applying for the driving license .</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input  id="fixed" name="licenseApplyMethod" type="radio" class="custom-control-input" value="a. fixed fee" required>
                                <label class="custom-control-label d-inline-flex" for="fixed">
                                    a. Fixed fee
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="passportPhoto" name="licenseApplyMethod" type="radio" value="b. three passport sized photo" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="passportPhoto">
                                    b. Three passport sized photo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="medicalCertificate" name="licenseApplyMethod" value="c. medical certificate" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="medicalCertificate">
                                    c. Medical certificate
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allLicenseApplyMethod" name="licenseApplyMethod" value="d. All the above" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allLicenseApplyMethod">
                                    d. All the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >8.which vehicle is ba 1 sa ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input  id="tempo" name="vehicleNumberForm" type="radio" class="custom-control-input" value="a. Private tempo" required>
                                <label class="custom-control-label d-inline-flex" for="tempo">
                                    a. Private tempo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="motorcycle" name="vehicleNumberForm" type="radio" value="b. Private motorcycle" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="motorcycle">
                                    b. Private motorcycle
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="car" name="vehicleNumberForm" type="radio" class="custom-control-input" value="c. Private car" required>
                                <label class="custom-control-label d-inline-flex" for="car">
                                    c. Private car
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="microbus" name="vehicleNumberForm" type="radio" class="custom-control-input" value="d. private microbus" required>
                                <label class="custom-control-label d-inline-flex" for="microbus">
                                    d. private microbus
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>9. By what is battery charged ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="selfDynamo" name="batteryCharger" type="radio" class="custom-control-input" value="a. Self dynamo" required>
                                <label class="custom-control-label d-inline-flex" for="selfDynamo">
                                    a. Self dynamo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="starter" name="batteryCharger" type="radio" value="b. Self starter" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="starter">
                                    b. Self starter
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="chargingDynamo" name="batteryCharger" value="c. Charging dynamo" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="chargingDynamo">
                                    c. Charging dynamo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="allCharge" name="batteryCharger" value="d. All above" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allCharge">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >10. What does a yellow light indicate ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="stop" name="yellowLightSignal" type="radio" class="custom-control-input" value="a. To stop" required>
                                <label class="custom-control-label d-inline-flex" for="stop">
                                    a. To stop
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="goLight" name="yellowLightSignal" type="radio" value="b. To go on the light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="goLight">
                                    b. To go on the light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="readyGo" value="c. Stop and ready to go" name="yellowLightSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="readyGo">
                                    c. Stop and ready to go
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="noMeaning" value="d. No meaning" name="yellowLightSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="noMeaning">
                                    d. No meaning
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>11. What shouldn’t we take while driving ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="drugs" name="avoidThing" type="radio" class="custom-control-input" value="a. drugs" required>
                                <label class="custom-control-label d-inline-flex" for="drugs">
                                    a. Drugs
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="cigarette" name="avoidThing" type="radio" value="b. cigarette" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="cigarette">
                                    b. Cigarette
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="alcohol" name="avoidThing" value="c. alcohol" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="alcohol">
                                    c. Alcohol
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allNotTake" value="d. all above" name="avoidThing" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allNotTake">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>12.Which wheel is affected by hand brake .

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="allWheel" name="handBreakAffect" type="radio" class="custom-control-input" value="a. All the wheel" required>
                                <label class="custom-control-label d-inline-flex" for="allWheel">
                                    a. All the wheel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="twoWheel" name="handBreakAffect" type="radio" value="b. Two rear wheel" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="twoWheel">
                                    b. Two rear wheel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="twoFront" value="c. Two front" name="handBreakAffect" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="twoFront">
                                    c. Two front
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="nonWheel" value="d. non of the wheel" name="handBreakAffect" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="nonWheel">
                                    d. non of the wheel
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>13 . Which signal is used to stop the moving vehicle ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="headLight" name="stopSignal" type="radio" class="custom-control-input" value="a.	Head light" required>
                                <label class="custom-control-label d-inline-flex" for="headLight">
                                    a.	Head light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="brakeLight" name="stopSignal" type="radio" value="b.	Brake light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="brakeLight">
                                    b.	Brake light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="emergencyLight" name="stopSignal" value="c. Emergency light" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="emergencyLight">
                                    c.	Emergency light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="sideLight" value="d.	Side light on left" name="stopSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="sideLight">
                                    d.	Side light on left
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >14 . Who has the authority of  cancelling driving license ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="trafficPolice" name="authorityOfCancel" type="radio" class="custom-control-input" value="a. Traffic police" required>
                                <label class="custom-control-label d-inline-flex" for="trafficPolice">
                                    a.	Traffic police
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="policeStation" name="authorityOfCancel" type="radio" value="b. police station" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="policeStation">
                                    b.	Police station
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="transportManagement" value="c. transport management office" name="authorityOfCancel" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="transportManagement">
                                    c.	Transport management office
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="dept" name="authorityOfCancel" value="d. Dept of transport management" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="dept">
                                    d.  Dept of transport management
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>

                            15 . which gear should be used  while overtaking ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="first" name="overtakingGear" type="radio" class="custom-control-input" value="a.	First" required>
                                <label class="custom-control-label d-inline-flex" for="first">
                                    a.	First
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="second"  name="overtakingGear" type="radio" value="b. Second" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="second">
                                    b.	Second
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="third" value="c.	Third" name="overtakingGear" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="third">
                                    c.	Third
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="suitable" value="d.	Suitable gear" name="overtakingGear" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="suitable">
                                    d.	Suitable gear
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button class="float-right btn btn-primary" id="submitButton" onclick="onSubmit()">Submit</button>
                    </div>
                </div>
        </div>
    </div>
</div>

</body>
<script>
    // dynamic list of element name
    const ids = [
        'paymentMethod',
        'vehicleStart',
        'brakeJob',
        'fuelQuantity',
        'exam',
        'acidLevel',
        'licenseApplyMethod',
        'vehicleNumberForm',
        'batteryCharger',
        'yellowLightSignal',
        'avoidThing',
        'handBreakAffect',
        'stopSignal',
        'authorityOfCancel',
        'overtakingGear'
    ];

    // select value if exam is already taken
    $(document).ready(function () {
    const userId = document.getElementById("userId").value;
        $.ajax({
            url:"${pageContext.request.contextPath}/answer/"+userId,
            type:"get",
            contentType:"application/json",
            success:function(data){
                console.log(data);
                if(data == null){
                  alert("no previous exam taken !!");
                    document.getElementById("no-answer").style.display = "block";

                } else {
                    const answers = JSON.parse(data.userAnswers);
                    ids.forEach(dataKey => {
                        const ele = document.getElementsByName(dataKey);
                        for (let i = 0; i < ele.length; i++) {
                            if (ele[i].value === answers[dataKey])
                                ele[i].checked = true;
                        }
                    })
                    $("#questions :input").attr("disabled", true);
                    document.getElementById("submitButton").style.display = "none";
                    document.getElementById("correct-answer").style.display = "block";
                    document.getElementById("no-answer").style.display = "none";
                }
            },

        });
    })

    // submit question modal
    const answerModal = {
        userAnswers: undefined,
        userId: undefined
    };

    // submit question data
    function onSubmit() {
        let isFormValid = true;
        const data = {};
        ids.forEach(dataKey => {
            const ele = document.getElementsByName(dataKey);
            let value = null;
            for(let i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                    value = ele[i].value;
            }
            console.log(value , typeof value);
            if(value != null) {
                data[dataKey] = value.toString();
            } else {
                isFormValid = false;
            }
        })
        if(!isFormValid){
            alert("please fill all answer");
            return;
        }
        console.log(data);
        answerModal.userAnswers = JSON.stringify(data);
        answerModal.userId = document.getElementById("userId").value;
        saveAnswers(answerModal);
    }

    function saveAnswers(answer) {
        console.log(answer);
        $.ajax({
            url: "${pageContext.request.contextPath}/answer/submit",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(answer),
            success: function (data) {
                console.log(data);
                alert(data);
                window.location.href = '${pageContext.request.contextPath}/home';
            },

        });
    }
</script>
</html>
