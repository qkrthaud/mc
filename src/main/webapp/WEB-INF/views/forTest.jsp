<c:forEach var="dto" items="${happymeal_b}">
								<c:choose>
									<c:when test="${dto.status eq'진행중' }">
										<li class="ing on"><a href="${path }/whatsnew/happymeal?writeNo=${dto.writeNo }" class="ing on">
												<div class="tmb">
													<img
														src="${path }/resources/images/happymeal/${dto.mainImg }">
												</div>
												<div class="con">
													<strong class="tit">${dto.title }</strong>
												</div>
										</a></li>
									</c:when>
									<c:otherwise>
										<li class="end on"><a href="${path }/whatsnew/happymeal?writeNo=${dto.writeNo }"
											class = "end on">
											<div class="tmb">
												<img
													src="${path }/resources/images/happymeal/${dto.mainImg }">
											</div>
											<div class="con">
												<strong class="tit">${dto.title }</strong> <span
													id="statusSpan">종료된 행사입니다.</span>
											</div> </a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
								<c:forEach var="dto" items="${whatsnew_b}">
								<c:choose>
								<c:when test="${dto.status eq'진행중' }">
									<li class="ing on"><a href="${path }/whatsnew/promotion?writeNo=${dto.writeNo }" class = "ing on">
											<div class="tmb">
												<img src="${path }/resources/images/whatsnew/${dto.mainImg }">
											</div>
											<div class="con">
												<strong class="tit">${dto.title }</strong>
											</div>
									</a></li>
								</c:when>
								<c:otherwise>
									<li class="end on"><a href="${path }/whatsnew/promotion?writeNo=${dto.writeNo }" class = "end on">
											<div class="tmb">
												<img src="${path }/resources/images/whatsnew/${dto.mainImg }">
											</div>
											<div class="con">
												<strong class="tit">${dto.title }</strong>
												<span id="statusSpan">종료된 행사입니다.</span>
											</div>
									</a></li>
								</c:otherwise>
								</c:choose>
							</c:forEach>