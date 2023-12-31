<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<base href="../../" />
<head>
<title>USstore</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
<!-- jstree 링크  -->
<link href="resource/assets/plugins/custom/jstree/jstree.bundle.css"
	rel="stylesheet" type="text/css" />
<!--begin::Fonts(mandatory for all pages)-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="resource/assets/plugins/custom/datatables/datatables.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet"
	type="text/css" />
<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
<style>
.chat_modal_body {
	display: flex;
	padding: 10px;
}
.participaint_emp{
	cursor: pointer;
	hover
}
.participaint_emp:hover{
	color: #C6DA52;
}
</style>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<!--begin::Theme mode setup on page load-->
	<script>
		var defaultThemeMode = "light";
		var themeMode;
		if (document.documentElement) {
			if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
				themeMode = document.documentElement
						.getAttribute("data-bs-theme-mode");
			} else {
				if (localStorage.getItem("data-bs-theme") !== null) {
					themeMode = localStorage.getItem("data-bs-theme");
				} else {
					themeMode = defaultThemeMode;
				}
			}
			if (themeMode === "system") {
				themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark"
						: "light";
			}
			document.documentElement.setAttribute("data-bs-theme", themeMode);
		}
	</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Main-->
	<!--begin::Root-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="page d-flex flex-row flex-column-fluid"
			style="background-color: white;">
			<!--begin::Wrapper-->
			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">

				<!--================================메인 내용들어가는부분================================================-->
				<!--begin::Content-->
				<div class="content fs-6 d-flex flex-column flex-column-fluid"
					id="kt_content"
					style="margin-top: 90px; background-color: #fffff8;">
					<!--<h1 class="text-gray-900 fw-bold my-1 fs-2">채팅</h1>-->
					<!--begin::Toolbar-->
					<div class="toolbar" id="kt_toolbar">
						<div class=""
							style="display: flex; margin-left: 40px; margin-bottom: 5px;">
							<!--begin::Info-->
							<div
								class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2"
								style="margin-top: 10px;">
								<!--begin::Title-->

								<!--end::Title-->
							</div>
							<!--end::Info-->
							<!--begin::Actions-->
							<div
								class="d-flex align-items-center flex-nowrap text-nowrap py-1">
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#kt_modal_1"
									id="make_room_btn">방만들기</button>
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<div style="display: flex; align-items: center;">
													<input type="text" class="form-control form-control-solid"
														placeholder="이름을 입력하세요"
														style="width: 200px; height: 30px;" />
													<button type="button" class="btn btn-primary"
														style="margin: 5px;">검색</button>
												</div>
												<!--begin::Close-->
												<div
													class="btn btn-icon btn-sm btn-active-light-primary ms-2"
													data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
														class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>
											<div class="chat_modal_body">
												<div class="content_tree"
													style="float: left; width: 280px; height: 400px; overflow-y: auto;">
													<!-- 조직도 그리기 -->
													<!-- <span>여기에 조직도를 그려주세요</span> -->
													<!-- js트리 그리는 공간 -->
													<div id="make_room_jstree"></div>
													<!-- js트리 끝나는 곳-->
												</div>
												<div class="content_tree" id="make_room_enter_emp"
													style="float: left; width: 280px; height: 400px; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
												</div>
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal" id="make_room">채팅방 생성</button>
											</div>
										</div>
									</div>
								</div>
								<!--end::Actions-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Layout-->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div
										class="flex-column flex-lg-row-auto w-100 w-lg-300px w-xl-400px mb-10 mb-lg-0">
										<!--begin::Contacts-->
										<div class="card card-flush">
											<!--begin::Card body-->
											<div class="card-body pt-5" id="kt_chat_contacts_body"
												style="height: 700px; overflow-y: auto;">
												<!--begin::List-->
												<div class="scroll-y me-n5 pe-5 h-200px "
													id = "chat_list_div"
													data-kt-scroll="true"
													data-kt-scroll-activate="{default: false, lg: true}"
													data-kt-scroll-max-height="500px"
													data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_toolbar, #kt_app_toolbar, #kt_footer, #kt_app_footer, #kt_chat_contacts_header"
													data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_contacts_body"
													data-kt-scroll-offset="5px">
												</div>
												<!--end::List-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Contacts-->
									</div>
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Messenger-->
										<div class="card" id="kt_chat_messenger">
											<!--begin::Card header-->
											<div class="" id="kt_chat_messenger_header"
												style="display: flex; height: 50px; border-bottom: 1px solid #99A1B7; justify-content: space-between; align-items: center;">
												<!--begin::Card toolbar-->
												<div style="margin-left: 20px; margin-top: 10px;">
													<h3 class="chat-room-name"></h3>
												</div>
												<div class="chat-msg-tool-bar"
													style="display: none; align-items: center; width: 120px; justify-content: space-around; margin-right: 20px;">
													<div class="card-toolbar">
														<!-- ===============================체팅 참가인원 확인 아이콘======================================== -->
														<!--begin::Menu-->
														<div class="me-n3" style="margin: 10px;">
															<button class="btn btn-sm btn-icon"
																data-kt-menu-trigger="click"
																data-kt-menu-placement="bottom-end">
																<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/abstract/abs015.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><img src="resource/assets/media/icon/abs015.svg"/></span>
																<!--end::Svg Icon-->

															</button>
															<!--begin::Menu 3-->
															<div
																class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px py-3"
																data-kt-menu="true">
																<!--begin::Heading-->
																<div class="menu-item px-3">
																	<div
																		class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">참여한
																		인원들</div>
																</div>
																<!--end::Heading-->
																<!--begin::Menu item-->
																<div
																	style="height: 150px; overflow-y: auto; border: 1px solid #c6da52;">
																	<span>홍길동(인사팀 팀장)</span><br /> <span>홍길동(인사팀 팀장)</span><br />
																	<span>홍길동(인사팀 팀장)</span><br /> <span>홍길동(인사팀 팀장)</span><br />
																	<span>홍길동(인사팀 팀장)</span><br /> <span>홍길동(인사팀 팀장)</span><br />
																	<span>홍길동(인사팀 팀장)</span><br /> <span>홍길동(인사팀 팀장)</span><br />
																	<span>홍길동(인사팀 팀장)</span>
																</div>
																<!--end::Menu item-->
															</div>
															<!--end::Menu 3-->
														</div>
														<!--end::Menu-->
													</div>
													<!--end::Card toolbar-->
													<!--begin::Card toolbar-->
													<div class="card-toolbar">
														<!-- ===============================체팅 참가인원 추가 아이콘======================================== -->
														<!--begin::Menu-->
														<div class="me-n3">
															<button class="btn btn-sm btn-icon"
																data-kt-menu-trigger="click"
																data-kt-menu-placement="bottom-end"
																style="margin-left: 5px; padding: 10px;">
																<span class="ki-duotone ki-dots-square fs-2"><img src="resource/assets/media/icon/arr061.svg"/></span>
																<!--end::Svg Icon-->
															</button>
															<!--begin::Menu 3-->
															<div
																class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px h-500px py-3"
																data-kt-menu="true">
																<!--begin::Heading-->
																<div class="menu-item px-3">
																	<div
																		class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">인원추가</div>
																</div>
																<!--end::Heading-->

																<!-- js트리 그리는 공간 -->
																<div id="kt_docs_jstree_basic2">
																	
																</div>
																<!-- js트리 끝나는 곳-->
																<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_1"></button> -->
																<button type="button" class="btn btn-primary"
																	data-bs-toggle="modal" data-bs-target="#kt_modal_2">
																	인원추가</button>
															</div>
															<!--end::Menu 3-->
															<div class="modal fade" id="kt_modal_2" tabindex="-1">
																<div class="modal-dialog">
																	<div class="modal-content" style="width: 500px;">
																		<div class="modal-header">
																			<h3>추가된 참가자</h3>
																		</div>
																		<div>
																			<div class="content_tree"
																				style="border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
																			</div>
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-primary"
																				data-bs-dismiss="modal">완료</button>
																		</div>
																	</div>
																</div>
															</div>

														</div>
														<!--end::Menu-->
													</div>
													<!--end::Card toolbar-->
													<!--begin::Card toolbar-->
													<div class="card-toolbar">
														<!-- ===============================체팅 나가기 아이콘======================================== -->
														<!--begin::Menu-->
														<div class="me-n3">
															<button class="btn btn-sm btn-icon"
																data-kt-menu-trigger="click"
																data-kt-menu-placement="bottom-end"
																style="margin-right: 30px; padding: 10px;">
																<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/arrows/arr076.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><img src="resource/assets/media/icon/arr096.svg"/></span>
																<!--end::Svg Icon-->
															</button>
														</div>
														<!--end::Menu-->
													</div>
													<!--end::Card toolbar-->
												</div>
											</div>
											<!--end::Card header-->
											<!-- =============================체팅의 내용 바디============================================================ -->
											<!--begin::Card body-->
											<div class="card-body" id="chat_messenger_body"
												style="height: 500px;">
												<!-- ========================상대방 메세지 예시=============================================================== -->
												<!--begin::Messages-->
												<div class="scroll-y me-n5 pe-5 h-300px h-lg-auto" id="msg-content"
													data-kt-element="messages" data-kt-scroll="true"
													data-kt-scroll-activate="{default: false, lg: true}"
													data-kt-scroll-max-height="450px"
													data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_app_toolbar, #kt_toolbar, #kt_footer, #kt_app_footer, #kt_chat_messenger_header, #kt_chat_messenger_footer"
													data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_messenger_body"
													data-kt-scroll-offset="5px">
													
												</div>
												<!--end::Messages-->
											</div>
											<!--end::Card body-->
											<!--begin::Card footer-->
											<div class="card-footer pt-4" id="kt_chat_messenger_footer">
												<!--begin::Input-->
												<textarea class="form-control form-control-flush mb-3" id="msg-box"
													rows="1" data-kt-element="input" placeholder="메세지를 입력해주세요."
													style="height: 50px; resize: none;" maxlength="200"></textarea>
												<!--end::Input-->
												<!--begin:Toolbar-->
												<div class="d-flex flex-stack">
													<!--begin::Actions-->
													<div class="d-flex align-items-center me-2"></div>
													<!--end::Actions-->
													<!--begin::Send-->
													<button class="btn btn-primary" type="button" id="send-msg">Send</button>
													<!--end::Send-->
												</div>
												<!--end::Toolbar-->
											</div>
											<!--end::Card footer-->
										</div>
										<!--end::Messenger-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Layout-->
								<!--end::Modals-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->

				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
		</sec:authorize>
		<script>
			var hostUrl = "assets/";
		</script>
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script
			src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="resource/assets/plugins/custom/jstree/jstree.bundle.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
</body>
<!--end::Body-->
<script>
//리스트 보여주기

</script>
<script>
	let makeRoomParticipantList = [];
	let chatParticipantList = [];
	callChatRoomList();
	let username = '${principal.username}'
	let roomNum = '';
    let subscription = null;
    let socket = null;
    let stompClient = null;
    // 
	$(document).ready(function(){
		console.log("socket connection");
		connect();
	    if(stompClient.connected){
	    	console.log("websocket connected");
	    }
	})
	
	function callChatRoomList(){
		$.ajax({
			url:'/chat/chatRoomList.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
				console.log("caht list:"+data.list);
				drawChatRoomList(data.list);
			},error: function(error){
				console.log(error);
			}
		})		
	}
	
	function drawChatRoomList(list){
		$('chat_list_div').empty();
		console.log(list.length);
		if(list.length < 1){
			$('chat_list_div').append("<p>참여한 채팅방이 없습니다.</p>");
			return true;
		}
		for(let elem of list){
			content ="<div class='chat-list-content-div bg-hover-light-primary text-hover-primary ' style='border: 1px solid #ffffca; height: 80px; border-radius: 5px;'>"
			content +="<p style='display:none'>"+elem.chatRoomIdx+"</p>"
			content +="<div class='d-flex flex-column' style='margin: 5px; height: 80px;'>"
			content +="<div class='chatmain' style='display: flex; justify-content: space-between; margin-top: 10px;'>"
			content +="<a class='fs-5 fw-bold text-gray-900 text-hover-primary room-name' style='margin: 0px;'>"+elem.chatRoomName+"</a>"
			content +="<span class='text-muted fs-7 mb-1' style='text-align: right; margin: 0px;'>"+elem.lastMsgTime
			content +="</span></div>"
			content +="<div class='d-flex flex-column align-items-end ms-2'>"
			content +="<span class='cachnum' style='color: #255000;'>"+elem.readCnt
			content +="</span></div></div></div>"
			$('#chat_list_div').append(content);
		}
		clickChatRoomListElem()
	}
	
	$('#make_room_btn').on('click', function(){
		$.ajax({
			url:'/organizationChart.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
				jsTreeData = data.treeData;
				makeRoomJsTree(data.treeData);
			},error: function(error){
				console.log(error);
			}
		})
		
	});
	
	$('#make_room').on('click', function(){
		console.log("make_room_click")
		$.ajax({
			data:{
				particList:JSON.stringify(makeRoomParticipantList)
			},
			url:'/chat/makeRoom.ajax',
			type:'POST',
			dataType:'JSON',
			success:function(data){
				console.log(data);
				$('#make_room_enter_emp').empty();
				makeRoomParticipantList=[];
				callChatRoomList();
			},error:function(error){
				console.log(error);				
			}
		})	
	});
	
	function makeRoomJsTree(treeData){
		console.log("makeRoom"+treeData);
		
		$('#make_room_jstree').jstree('destroy');
		$('#make_room_jstree').jstree({
			"core" : {
				"data" : treeData
			},"Disable" : {
					"label" : "Disable",
					"action" : function(obj) {
						$("#make_room_jstree").jstree("disable_node", username+'_anchor');
					}
				}
			});
		treeDbClick();
		participantClick();
		
	}
	
	function participantClick() {
		$('div.participaint_emp').on('click', function() {
			$(this).remove();
			let removeId = $(this).children('a').html();
			let index = findEmp(removeId);
			makeRoomParticipantList.splice(index);
		});
	}

	function treeDbClick() {
		$('#make_room_jstree').bind(
				"dblclick.jstree",
				function(e, data) {
					var selectedNode = e.target;

					let id = e.target.id;
					let index = id.indexOf('_')
					console.log(id)
					id = id.substr(0, index)
					console.log(findEmp(id));
					if (findEmp(id) < 0) {
						let participant = {}
						participant.empIdx = id;
						participant.name = selectedNode.text;
						makeRoomParticipantList.push(participant);
						content = "<div class='participaint_emp'>"
								+ selectedNode.text
								+ "<a style='visibility:hidden'>" + id
								+ "</a></div>"
						$('#selectedNodeInput').val("선택된 노드 :" + selectedNode);
						$('#make_room_enter_emp').append(content);
						participantClick();
					}
				});
	}

	function findEmp(empIdx) {
		for (let i = 0; i < makeRoomParticipantList.length; i++) {
			if (makeRoomParticipantList[i].empIdx == empIdx) {
				return i
			}
		}
		return -1;
	}
	
	$('#send-msg').on('click', function(){
		console.log('msgclick')
		var message = $('#msg-box').val().trim();
		console.log(message)
		sendMessage(message);
	});
	
	function clickChatRoomListElem(){
		$('.chat-list-content-div').on('click', function(){
			let newRoomNum =  $(this).children('p').html();
			let $roomName = $(this).children('div');
			$roomName = $roomName.children('div');
			let roomName = $roomName.children('a').text();
			
			if(roomNum != newRoomNum){
				if(subscription != null){
					subscription.unsubscribe();
				}
				roomNum = newRoomNum;
				console.log(subscription);
				subscripe();
				callChatList(roomNum);
				$('chat-room-name').html(roomName);
				$('chat-msg-tool-bar').css('display:flex');
			}
			
		});
	}
	
	function callChatList(roomNum){
		$.ajax({
			data:{
				'roomNum':roomNum
			},
			url:'/chat/chatList.ajax',
			type:'get',
			dataType:'json',
			success:function(data){
				console.log(data.chatdata);
				drawChatHistory(data.chatdata)
				
			}, error:function(){
				
			}
		})
	}
	
	function drawChatHistory(data){
		for(let message of data){
			content = ""
			if(message.sender == username){
				content+="<div class='d-flex justify-content-end mb-10'>"
				content+="<div class='d-flex flex-column align-items-end'>"
				content+="<div class='d-flex align-items-center mb-2'>"
				content+="<div class='me-3'><a class='fs-5 fw-bold text-gray-900 ms-1'>"
				content+=message.sender+"</a></div></div>"
				content+="<div class='p-5 rounded bg-light-primary text-gray-900 fw-semibold mw-lg-400px text-end' data-kt-element='message-text'>" 
				content+=message.data+"</div></div></div>"
			}else{
				content += "<div class='d-flex justify-content-start mb-10'>"
				content += "<div class='d-flex flex-column align-items-start'>"
				content += "<div class='d-flex align-items-center mb-2'><div class='ms-3'>"
				content += "<a class='fs-5 fw-bold text-gray-900 text-hover-primary me-1'>"
				content += message.sender+"</a></div></div>"
				content += "<div class='p-5 rounded bg-light-info text-gray-900 fw-semibold mw-lg-400px text-start'data-kt-element='message-text'>" 
				content += message.data+"</div></div></div>"
			}
			$('#msg-content').append(content);
		}
	}
	
	function connect() {
		socket = new SockJS('http://localhost:80/ws');
	    stompClient = Stomp.over(socket);
	    stompClient.connect({}, function(frame){
	    	console.log("connect")
	    }, onError);
	}
	
	function onError(error){
		alert('서버와 연결할 수 없습니다. 다시 시도해 주세요');
		console.log(error);
	}
	
	function onMessageReceived(payload){
		var message = JSON.parse(payload.body);
		console.log(message);
		let data = [];
		data.push(message);
		drawChatHistory(data);
	}

	function subscripe(){
		console.log("연결");
		subscription = stompClient.subscribe('/topic/chat/'+roomNum, onMessageReceived);
	}

	function sendMessage(message){
		console.log('sendMsg : '+message);
		if(message && stompClient){
			let chatMessage = {
					sender : username,
					data : message,
					roomNum : roomNum,
					type : 'CHAT'
			}
			stompClient.send("/app/chat", {}, JSON.stringify(chatMessage));
		}
		$('#msg-box ').val('');
	}
</script>
</html>