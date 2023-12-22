<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head>
<base href="../" />
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
				<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
						<!--begin::Post-->
						<form action="/employee/registration" method="post">
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								
								<div style="margin-top:20px">
								부서
								<select class="form-select" aria-label="Select example" name="deptName">
    								<option value="인사팀">인사팀</option>
    								<option value="회계팀">회계팀</option>
    								<option value="고객관리팀">고객관리팀</option>
    								<option value="매장관리팀">매장관리팀</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								직책
								<select class="form-select" aria-label="Select example" name="positionType">
    								<option value="팀장">팀장</option>
    								<option value="매니저">매니저</option>
    								<option value="팀원">팀원</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								이름
								<input type="text" name="empName" class="form-control" placeholder="이름을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								비상 연락처
								<input type="text" name="empEmergencyPhone" class= "form-control" placeholder="비상 연락망을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								개인 연락처
								<input type="text" name="empPhone" class="form-control" placeholder="개인 번호를 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								성별
								<div class="form-check form-check-custom form-check-solid">
    								<input class="form-check-input" name="empGender" type="radio" value="M" id="flexRadioDefault" checked="checked"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								남자
    								</label>
    								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								<input class="form-check-input" name="empGender" type="radio" value="W" id="flexRadioDefault"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								여자
    								</label>
								</div>
								</div>
								
								<div style="margin-top:20px">
								생년월일
								<input type="date" name="empBrith" class= "form-control"/>
								
								</div>
								
								<div style="margin-top:20px">
									<div class="d-flex flex-stack flex-wrap flex-sm-nowrap">
										<div>
											주소 
										</div>
										<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기"/>
									</div>
									<input type="text" class="form-control" placeholder="우편번호" id="post_num" name="empZipcode"/>
									<input type="text" class="form-control" placeholder="주소" id="roadaddress" name="empRoadAddr"/>
									<span id="guide" style="color:#999;display:none"></span>
									<div style="margin-top: 5px">
										<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress" name="empDetailAddr"/>
									</div>
								</div>
								<div style="margin-top:20px">
 									최종 학력
								<select class="form-select" aria-label="Select example" name="education">
    								<option value="초등학교 졸업">초등학교 졸업</option>
    								<option value="중학교 졸업">중학교 졸업</option>
    								<option value="고등학교 졸업">고등학교 졸업</option>
    								<option value="대학교 졸업">대학교 졸업</option>
    								<option value="직업전문학원·학교 및 기타학력 졸업">직업전문학원·학교 및 기타학력 졸업</option>
								</select>
								
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="학교" name="schoolName"/>
								</div>
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="전공" name="major"/>								
								</div>
								</div>
								<input type="submit" class="btn btn-primary" id="kt_toolbar_primary_button" value="등록"">
							</div>
							<!--end::Container-->
						</div>
						
						</form>
						<!--end::Post-->
					</div>
					<!--end::Content-->
					
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		
		<!--end::Modal - Users Search-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/map.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/continentsLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/usaLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/radar.js"></script>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function findlocation() {
			new daum.Postcode({
				oncomplete: function(data) {
					
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.roadAddress;
	                }
					
					$('#post_num').val(data.zonecode);
					$('#roadaddress').val(addr);
				}
			}).open();
		}
</script>
	<!--end::Body-->
</html>