<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>JSTL Functions Library Tag Test</h1>
  <h3>문자열 처리에 관련된 함수들이다.</h3>
  <h3>el 안에서 값 처리용으로 사용되거나 value 속성에 대입 시에 사용한다.</h3>

  <c:set var="str" value="How are you?" />

  str : ${ str } <br/>
  you가 포함되어 있나 : ${ fn:contains(str, 'you') } <br/>
  how가 포함되어 있나 : ${ fn:contains(str, 'how') } <br/>
  대소문자 구분없이 how가 포함되어 있나 :  ${ fn:containsIgnoreCase(str, 'how') } <br/>
  모두 대문자로 : ${ fn:toUpperCase(str) } <br/>
  모두 소문자로 : ${ fn:toLowerCase(str) } <br/>
  are 의 위치 : ${ fn:indexOf(str, "are") } <br/>
  How를 Where로 바꾸기 : ${ fn:replace(str, "How", "Where") } <br/>
  문자열의 길이 : ${ fn:length(str) } <br/>
  are 분리 추출 : ${ fn:substring(str, 4, 7) } <br/>

  <br>

  <c:set var="arr" value="${ fn:split(str, ' ') }"/>
  배열로 변환<br>
  <c:forEach items="${ arr }" varStatus="st">
    <c:out value="${ st.count } : ${ arr[st.index] }"/><br>
  </c:forEach>


  <br>
  하나로 합치기 : <c:out value="${ fn:join(arr, '-') }"/>
</body>
</html>
