//
//  QuestionBank.swift
//  DrivTest
//
//  Created by HUYTU on 1/19/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation


class QuestionBank {
    var list = [Question]()
    
    init(type:Int, subtype:Int){	
        
        if(type == 0){ // =============================================================== bang A1
            if(subtype == 0){ // --------------------------------------------------------------------------------------------------- cau hoi diem liet
                list.append(Question(questionText: "Hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Đỗ xe trên đường phố.",
                                     choiceB: "B. Sử dụng xe đạp đi trên các tuyến quốc lộ có tốc độ cao.",
                                     choiceC: "C. Làm hỏng (cố ý) cọc tiêu, gương cầu, dải phân cách.",
                                     choiceD: "D. Sử dụng còi và quay đầu xe trong khu dân cư.",
                                     answer: 3))
                list.append(Question(questionText: "Hành vi đưa xe cơ giới, xe máy chuyên dùng không bảo đảm tiêu chuẩn an toàn kỹ thuật và bảo vệ môi trường vào tham gia giao thông đường bộ có bị nghiêm cấm hay không?",
                                     choiceA: "A. Không nghiêm cấm.",
                                     choiceB: "B. Bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm tùy theo các tuyến đường.",
                                     choiceD: "D. Bị nghiêm cấm tuỳ theo loại xe.",
                                     answer: 2))
                list.append(Question(questionText: "Cuộc đua xe chỉ được thực hiện khi nào?",
                                     choiceA: "A. Diễn ra trên đường phố không có người qua lại.",
                                     choiceB: "B. Được người dân ủng hộ.",
                                     choiceC: "C. Được cơ quan có thẩm quyền cấp phép.",
                                     choiceD: "D. Không được phép.",
                                     answer: 3))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu có chất ma tuý ở mức nhẹ, có thể điều khiển phương tiện.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?",
                                     choiceA: "A. Không được phép.",
                                     choiceB: "B. Chỉ được lái ở tốc độ chậm và quãng đường ngắn.",
                                     choiceC: "C. Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?",
                                     choiceA: "A. Chỉ được thực hiện nếu đã hướng dẫn đầy đủ.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tuỳ từng trường hợp.",
                                     choiceD: "D. Chỉ được phép thực hiện với thành viên trong gia đình.",
                                     answer: 2))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?",
                                     choiceA: "A. Đi về phía bên trái.",
                                     choiceB: "B. Đi về phía bên phải.",
                                     choiceC: "C. Đi ở giữa.",
                                     choiceD: "D. Đi trên lề đường.",
                                     answer: 2))
                list.append(Question(questionText: "Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?",
                                     choiceA: "A. Đi ở làn bên phải trong cùng.",
                                     choiceB: "B. Đi ở làn phía bên trái.",
                                     choiceC: "C. Đi ở làn giữa.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?",
                                     choiceA: "A. Không bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm khi rất vội.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tùy từng trường hợp.",
                                     choiceD: "D. Phải đăng ký với cơ quan địa phương.",
                                     answer: 2))
                list.append(Question(questionText: "Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật Giao thông đường bộ?",
                                     choiceA: "A. Được phép sản xuất, sử dụng khi bị mất biển số.",
                                     choiceB: "B. Được phép mua bán, sử dụng khi bị mất biển số.",
                                     choiceC: "C. Nghiêm cấm sản xuất, mua bán, sử dụng trái phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Tùy từng trường hợp.",
                                     choiceD: "D. Được phép với ô tô tải.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?",
                                     choiceA: "A. Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.",
                                     choiceB: "B. Ở phía trước hoặc phía sau của phần đường dành cho người đi bộ qua đường, trên đường quốc lộ, tại nơi đường bộ giao nhau không cùng mức với đường sắt.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?",
                                     choiceA: "A. Được dừng xe, đỗ xe trong trường hợp cần thiết.",
                                     choiceB: "B. Không được dừng xe, đỗ xe.",
                                     choiceC: "C. Được dừng xe, không được đỗ xe.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.",
                                     choiceC: "C. Tuỳ trường hợp.",
                                     choiceD: "D. Không được phép.",
                                     answer: 4))
                list.append(Question(questionText: "Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Tuỳ trường hợp.",
                                     choiceC: "C. Không được phép.",
                                     choiceD: "D. Được phép với người khuyết tật.",
                                     answer: 3))
                list.append(Question(questionText: "Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?",
                                     choiceA: "A. Được mang, vác tuỳ trường hợp cụ thể.",
                                     choiceB: "B. Không được mang, vác.",
                                     choiceC: "C. Được mang, vác nhưng phải đảm bảo an toàn.",
                                     choiceD: "D. Được mang vác tùy theo sức khỏe của bản thân.",
                                     answer: 2))
                
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại  là gì?",
                                     choiceA: "A. Phần mặt đường và lề đường.",
                                     choiceB: "B. Phần đường xe chạy.",
                                     choiceC: "C. Phần đường xe cơ giới.",
                                     choiceD: "D. Lề đường không sử dụng cho người đi bộ.",
                                     answer: 2))
                list.append(Question(questionText: "“Làn đường” là gì?",
                                     choiceA: "A. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.",
                                     choiceB: "B. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.",
                                     choiceC: "C. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe ô tô chạy an toàn.",
                                     choiceD: "D. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho người đi bộ",
                                     answer: 2))
                list.append(Question(questionText: "“Khổ giới hạn đường bộ” để xe và hàng hóa trên xe đi lại an toàn bao gồm những giới hạn nào?",
                                     choiceA: "A. Giới hạn về chiều cao hoặc chiều rộng của cầu đường.",
                                     choiceB: "B. Giới hạn về chiều cao và chiều rộng của cầu, đường.",
                                     choiceC: "C. Giới hạn về chiều rộng của cầu, đường.",
                                     choiceD: "D. Giới hạn về chiều cao của cầu, đường.",
                                     answer: 2))
                list.append(Question(questionText: "Khái niệm “dải phân cách” được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.",
                                     choiceB: "B. Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.",
                                     choiceC: "C. Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.",
                                     choiceD: "D. Là làn đường phân chia mặt đường cho người đi bộ.",
                                     answer: 1))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?",
                                     choiceA: "A. Đường không ưu tiên.",
                                     choiceB: "B. Đường tỉnh lộ.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường ưu tiên.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
                list.append(Question(questionText: "Thời gian làm việc của người lái xe ô tô không được lái xe liên tục quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 4 giờ.",
                                     choiceB: "B. Không quá 6 giờ.",
                                     choiceC: "C. Không quá 8 giờ.",
                                     choiceD: "D. Liên tục tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 1))
                list.append(Question(questionText: "Thời gian làm việc trong một ngày của người lái xe ô tô không được vượt quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 8 giờ.",
                                     choiceB: "B. Không quá 10 giờ.",
                                     choiceC: "C. Không quá 12 giờ.",
                                     choiceD: "D. Không hạn chế tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 4))
                
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người hành nghề lái xe khi thực hiện tốt việc rèn luyện, nâng cao trách nhiệm, đạo đức nghề nghiệp sẽ thu được kết quả như thế nào dưới đây?",
                                     choiceA: "A. Được khách hàng, xã hội tôn trọng; được đồng nghiệp quý mến, giúp đỡ; được doanh nghiệp tin dùng và đóng góp nhiều cho xã hội.",
                                     choiceB: "B. Thu hút được khách hàng, góp phần quan trọng trong xây dựng thương hiệu, kinh doanh có hiệu quả cao.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?",
                                     choiceA: "A. Cho xe chạy thật nhanh qua vũng nước.",
                                     choiceB: "B. Giảm tốc độ cho xe chạy chậm qua vũng nước.",
                                     choiceC: "C. Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?",
                                     choiceA: "A. Là bình thường.",
                                     choiceB: "B. Là thiếu văn hóa giao thông.",
                                     choiceC: "C. Là có văn hóa giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.",
                                     choiceB: "B. Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt nạn nhân nằm ngửa, khai thông đường thở của nạn nhân.",
                                     choiceB: "B. Thực hiện các biện pháp hô hấp nhân tạo.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Xâm phạm tính mạng, sức khoẻ, tài sản của người bị nạn và người gây tai nạn.",
                                     choiceB: "B. Bỏ trốn sau khi gây ra tai nạn để trốn tránh trách nhiệm.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?",
                                     choiceA: "A. Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.",
                                     choiceB: "B. Đi lên vỉa hè, tận dùng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.",
                                     choiceC: "C. Lấn sang trái đường cố gắng vượt lên xe khác.",
                                     choiceD: "D. Tất cả các ý nêu trên.",
                                     answer: 4))
                
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
            
        }else if(type == 1){ // =============================================================== bang A2
            if(subtype == 0){ // --------------------------------------------------------------------------------------------------- cau hoi diem liet
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu có chất ma tuý ở mức nhẹ, có thể điều khiển phương tiện.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?",
                                     choiceA: "A. Không được phép.",
                                     choiceB: "B. Chỉ được lái ở tốc độ chậm và quãng đường ngắn.",
                                     choiceC: "C. Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?",
                                     choiceA: "A. Chỉ được thực hiện nếu đã hướng dẫn đầy đủ.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tuỳ từng trường hợp.",
                                     choiceD: "D. Chỉ được phép thực hiện với thành viên trong gia đình.",
                                     answer: 2))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?",
                                     choiceA: "A. Đi về phía bên trái.",
                                     choiceB: "B. Đi về phía bên phải.",
                                     choiceC: "C. Đi ở giữa.",
                                     choiceD: "D. Đi trên lề đường.",
                                     answer: 2))
                list.append(Question(questionText: "Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?",
                                     choiceA: "A. Đi ở làn bên phải trong cùng.",
                                     choiceB: "B. Đi ở làn phía bên trái.",
                                     choiceC: "C. Đi ở làn giữa.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tùy từng trường hợp.",
                                     choiceD: "D. Phải đăng ký với cơ quan địa phương.",
                                     answer: 2))
                list.append(Question(questionText: "Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Tùy từng trường hợp.",
                                     choiceD: "D. Được phép với ô tô tải.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?",
                                     choiceA: "A. Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.",
                                     choiceB: "B. Ở phía trước hoặc phía sau của phần đường dành cho người đi bộ qua đường, trên đường quốc lộ, tại nơi đường bộ giao nhau không cùng mức với đường sắt.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?",
                                     choiceA: "A. Được dừng xe, đỗ xe trong trường hợp cần thiết.",
                                     choiceB: "B. Không được dừng xe, đỗ xe.",
                                     choiceC: "C. Được dừng xe, không được đỗ xe.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.",
                                     choiceC: "C. Tuỳ trường hợp.",
                                     choiceD: "D. Không được phép.",
                                     answer: 4))
                list.append(Question(questionText: "Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Tuỳ trường hợp.",
                                     choiceC: "C. Không được phép.",
                                     choiceD: "D. Được phép với người khuyết tật.",
                                     answer: 3))
                list.append(Question(questionText: "Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?",
                                     choiceA: "A. Được mang, vác tuỳ trường hợp cụ thể.",
                                     choiceB: "B. Không được mang, vác.",
                                     choiceC: "C. Được mang, vác nhưng phải đảm bảo an toàn.",
                                     choiceD: "D. Được mang vác tùy theo sức khỏe của bản thân.",
                                     answer: 2))
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "“Khổ giới hạn đường bộ” để xe và hàng hóa trên xe đi lại an toàn bao gồm những giới hạn nào?",
                                     choiceA: "A. Giới hạn về chiều cao hoặc chiều rộng của cầu đường.",
                                     choiceB: "B. Giới hạn về chiều cao và chiều rộng của cầu, đường.",
                                     choiceC: "C. Giới hạn về chiều rộng của cầu, đường.",
                                     choiceD: "D. Giới hạn về chiều cao của cầu, đường.",
                                     answer: 2))
                list.append(Question(questionText: "Khái niệm “dải phân cách” được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.",
                                     choiceB: "B. Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.",
                                     choiceC: "C. Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.",
                                     choiceD: "D. Là làn đường phân chia mặt đường cho người đi bộ.",
                                     answer: 1))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?",
                                     choiceA: "A. Đường không ưu tiên.",
                                     choiceB: "B. Đường tỉnh lộ.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường ưu tiên.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
                list.append(Question(questionText: "Thời gian làm việc của người lái xe ô tô không được lái xe liên tục quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 4 giờ.",
                                     choiceB: "B. Không quá 6 giờ.",
                                     choiceC: "C. Không quá 8 giờ.",
                                     choiceD: "D. Liên tục tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 1))
                list.append(Question(questionText: "Thời gian làm việc trong một ngày của người lái xe ô tô không được vượt quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 8 giờ.",
                                     choiceB: "B. Không quá 10 giờ.",
                                     choiceC: "C. Không quá 12 giờ.",
                                     choiceD: "D. Không hạn chế tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 4))
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người hành nghề lái xe khi thực hiện tốt việc rèn luyện, nâng cao trách nhiệm, đạo đức nghề nghiệp sẽ thu được kết quả như thế nào dưới đây?",
                                     choiceA: "A. Được khách hàng, xã hội tôn trọng; được đồng nghiệp quý mến, giúp đỡ; được doanh nghiệp tin dùng và đóng góp nhiều cho xã hội.",
                                     choiceB: "B. Thu hút được khách hàng, góp phần quan trọng trong xây dựng thương hiệu, kinh doanh có hiệu quả cao.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?",
                                     choiceA: "A. Cho xe chạy thật nhanh qua vũng nước.",
                                     choiceB: "B. Giảm tốc độ cho xe chạy chậm qua vũng nước.",
                                     choiceC: "C. Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?",
                                     choiceA: "A. Là bình thường.",
                                     choiceB: "B. Là thiếu văn hóa giao thông.",
                                     choiceC: "C. Là có văn hóa giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.",
                                     choiceB: "B. Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt nạn nhân nằm ngửa, khai thông đường thở của nạn nhân.",
                                     choiceB: "B. Thực hiện các biện pháp hô hấp nhân tạo.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Xâm phạm tính mạng, sức khoẻ, tài sản của người bị nạn và người gây tai nạn.",
                                     choiceB: "B. Bỏ trốn sau khi gây ra tai nạn để trốn tránh trách nhiệm.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?",
                                     choiceA: "A. Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.",
                                     choiceB: "B. Đi lên vỉa hè, tận dùng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.",
                                     choiceC: "C. Lấn sang trái đường cố gắng vượt lên xe khác.",
                                     choiceD: "D. Tất cả các ý nêu trên.",
                                     answer: 4))
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
            
        }else if(type == 2){ // =============================================================== bang B1
            if(subtype == 0){ // cau hoi diem liet
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?",
                                     choiceA: "A. Chỉ được thực hiện nếu đã hướng dẫn đầy đủ.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tuỳ từng trường hợp.",
                                     choiceD: "D. Chỉ được phép thực hiện với thành viên trong gia đình.",
                                     answer: 2))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?",
                                     choiceA: "A. Đi về phía bên trái.",
                                     choiceB: "B. Đi về phía bên phải.",
                                     choiceC: "C. Đi ở giữa.",
                                     choiceD: "D. Đi trên lề đường.",
                                     answer: 2))
                list.append(Question(questionText: "Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?",
                                     choiceA: "A. Đi ở làn bên phải trong cùng.",
                                     choiceB: "B. Đi ở làn phía bên trái.",
                                     choiceC: "C. Đi ở làn giữa.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?",
                                     choiceA: "A. Không bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm khi rất vội.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tùy từng trường hợp.",
                                     choiceD: "D. Phải đăng ký với cơ quan địa phương.",
                                     answer: 2))
                list.append(Question(questionText: "Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật Giao thông đường bộ?",
                                     choiceA: "A. Được phép sản xuất, sử dụng khi bị mất biển số.",
                                     choiceB: "B. Được phép mua bán, sử dụng khi bị mất biển số.",
                                     choiceC: "C. Nghiêm cấm sản xuất, mua bán, sử dụng trái phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Tùy từng trường hợp.",
                                     choiceD: "D. Được phép với ô tô tải.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?",
                                     choiceA: "A. Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.",
                                     choiceB: "B. Ở phía trước hoặc phía sau của phần đường dành cho người đi bộ qua đường, trên đường quốc lộ, tại nơi đường bộ giao nhau không cùng mức với đường sắt.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?",
                                     choiceA: "A. Được dừng xe, đỗ xe trong trường hợp cần thiết.",
                                     choiceB: "B. Không được dừng xe, đỗ xe.",
                                     choiceC: "C. Được dừng xe, không được đỗ xe.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.",
                                     choiceC: "C. Tuỳ trường hợp.",
                                     choiceD: "D. Không được phép.",
                                     answer: 4))
                list.append(Question(questionText: "Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Tuỳ trường hợp.",
                                     choiceC: "C. Không được phép.",
                                     choiceD: "D. Được phép với người khuyết tật.",
                                     answer: 3))
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "Khái niệm “dải phân cách” được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.",
                                     choiceB: "B. Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.",
                                     choiceC: "C. Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.",
                                     choiceD: "D. Là làn đường phân chia mặt đường cho người đi bộ.",
                                     answer: 1))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?",
                                     choiceA: "A. Đường không ưu tiên.",
                                     choiceB: "B. Đường tỉnh lộ.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường ưu tiên.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
                list.append(Question(questionText: "Thời gian làm việc của người lái xe ô tô không được lái xe liên tục quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 4 giờ.",
                                     choiceB: "B. Không quá 6 giờ.",
                                     choiceC: "C. Không quá 8 giờ.",
                                     choiceD: "D. Liên tục tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 1))
                list.append(Question(questionText: "Thời gian làm việc trong một ngày của người lái xe ô tô không được vượt quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 8 giờ.",
                                     choiceB: "B. Không quá 10 giờ.",
                                     choiceC: "C. Không quá 12 giờ.",
                                     choiceD: "D. Không hạn chế tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 4))
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?",
                                     choiceA: "A. Cho xe chạy thật nhanh qua vũng nước.",
                                     choiceB: "B. Giảm tốc độ cho xe chạy chậm qua vũng nước.",
                                     choiceC: "C. Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?",
                                     choiceA: "A. Là bình thường.",
                                     choiceB: "B. Là thiếu văn hóa giao thông.",
                                     choiceC: "C. Là có văn hóa giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.",
                                     choiceB: "B. Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt nạn nhân nằm ngửa, khai thông đường thở của nạn nhân.",
                                     choiceB: "B. Thực hiện các biện pháp hô hấp nhân tạo.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Xâm phạm tính mạng, sức khoẻ, tài sản của người bị nạn và người gây tai nạn.",
                                     choiceB: "B. Bỏ trốn sau khi gây ra tai nạn để trốn tránh trách nhiệm.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?",
                                     choiceA: "A. Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.",
                                     choiceB: "B. Đi lên vỉa hè, tận dùng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.",
                                     choiceC: "C. Lấn sang trái đường cố gắng vượt lên xe khác.",
                                     choiceD: "D. Tất cả các ý nêu trên.",
                                     answer: 4))
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
            
        }else if(type == 3){ // =============================================================== bang B2
            if(subtype == 0){ // --------------------------------------------------------------------------------------------------- cau hoi diem liet
                list.append(Question(questionText: "Cuộc đua xe chỉ được thực hiện khi nào?",
                                     choiceA: "A. Diễn ra trên đường phố không có người qua lại.",
                                     choiceB: "B. Được người dân ủng hộ.",
                                     choiceC: "C. Được cơ quan có thẩm quyền cấp phép.",
                                     choiceD: "D. Không được phép.",
                                     answer: 3))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu có chất ma tuý ở mức nhẹ, có thể điều khiển phương tiện.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?",
                                     choiceA: "A. Không được phép.",
                                     choiceB: "B. Chỉ được lái ở tốc độ chậm và quãng đường ngắn.",
                                     choiceC: "C. Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?",
                                     choiceA: "A. Chỉ được thực hiện nếu đã hướng dẫn đầy đủ.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tuỳ từng trường hợp.",
                                     choiceD: "D. Chỉ được phép thực hiện với thành viên trong gia đình.",
                                     answer: 2))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?",
                                     choiceA: "A. Đi về phía bên trái.",
                                     choiceB: "B. Đi về phía bên phải.",
                                     choiceC: "C. Đi ở giữa.",
                                     choiceD: "D. Đi trên lề đường.",
                                     answer: 2))
                list.append(Question(questionText: "Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?",
                                     choiceA: "A. Đi ở làn bên phải trong cùng.",
                                     choiceB: "B. Đi ở làn phía bên trái.",
                                     choiceC: "C. Đi ở làn giữa.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?",
                                     choiceA: "A. Không bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm khi rất vội.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tùy từng trường hợp.",
                                     choiceD: "D. Phải đăng ký với cơ quan địa phương.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?",
                                     choiceA: "A. Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.",
                                     choiceB: "B. Ở phía trước hoặc phía sau của phần đường dành cho người đi bộ qua đường, trên đường quốc lộ, tại nơi đường bộ giao nhau không cùng mức với đường sắt.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?",
                                     choiceA: "A. Được dừng xe, đỗ xe trong trường hợp cần thiết.",
                                     choiceB: "B. Không được dừng xe, đỗ xe.",
                                     choiceC: "C. Được dừng xe, không được đỗ xe.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.",
                                     choiceC: "C. Tuỳ trường hợp.",
                                     choiceD: "D. Không được phép.",
                                     answer: 4))
                list.append(Question(questionText: "Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Tuỳ trường hợp.",
                                     choiceC: "C. Không được phép.",
                                     choiceD: "D. Được phép với người khuyết tật.",
                                     answer: 3))
                list.append(Question(questionText: "Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?",
                                     choiceA: "A. Được mang, vác tuỳ trường hợp cụ thể.",
                                     choiceB: "B. Không được mang, vác.",
                                     choiceC: "C. Được mang, vác nhưng phải đảm bảo an toàn.",
                                     choiceD: "D. Được mang vác tùy theo sức khỏe của bản thân.",
                                     answer: 2))
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại  là gì?",
                                     choiceA: "A. Phần mặt đường và lề đường.",
                                     choiceB: "B. Phần đường xe chạy.",
                                     choiceC: "C. Phần đường xe cơ giới.",
                                     choiceD: "D. Lề đường không sử dụng cho người đi bộ.",
                                     answer: 2))
                list.append(Question(questionText: "“Làn đường” là gì?",
                                     choiceA: "A. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.",
                                     choiceB: "B. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.",
                                     choiceC: "C. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe ô tô chạy an toàn.",
                                     choiceD: "D. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho người đi bộ",
                                     answer: 2))
                list.append(Question(questionText: "“Khổ giới hạn đường bộ” để xe và hàng hóa trên xe đi lại an toàn bao gồm những giới hạn nào?",
                                     choiceA: "A. Giới hạn về chiều cao hoặc chiều rộng của cầu đường.",
                                     choiceB: "B. Giới hạn về chiều cao và chiều rộng của cầu, đường.",
                                     choiceC: "C. Giới hạn về chiều rộng của cầu, đường.",
                                     choiceD: "D. Giới hạn về chiều cao của cầu, đường.",
                                     answer: 2))
                list.append(Question(questionText: "Khái niệm “dải phân cách” được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.",
                                     choiceB: "B. Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.",
                                     choiceC: "C. Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.",
                                     choiceD: "D. Là làn đường phân chia mặt đường cho người đi bộ.",
                                     answer: 1))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?",
                                     choiceA: "A. Đường không ưu tiên.",
                                     choiceB: "B. Đường tỉnh lộ.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường ưu tiên.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
                list.append(Question(questionText: "Thời gian làm việc của người lái xe ô tô không được lái xe liên tục quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 4 giờ.",
                                     choiceB: "B. Không quá 6 giờ.",
                                     choiceC: "C. Không quá 8 giờ.",
                                     choiceD: "D. Liên tục tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 1))
                list.append(Question(questionText: "Thời gian làm việc trong một ngày của người lái xe ô tô không được vượt quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 8 giờ.",
                                     choiceB: "B. Không quá 10 giờ.",
                                     choiceC: "C. Không quá 12 giờ.",
                                     choiceD: "D. Không hạn chế tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 4))
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?",
                                     choiceA: "A. Cho xe chạy thật nhanh qua vũng nước.",
                                     choiceB: "B. Giảm tốc độ cho xe chạy chậm qua vũng nước.",
                                     choiceC: "C. Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?",
                                     choiceA: "A. Là bình thường.",
                                     choiceB: "B. Là thiếu văn hóa giao thông.",
                                     choiceC: "C. Là có văn hóa giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.",
                                     choiceB: "B. Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt nạn nhân nằm ngửa, khai thông đường thở của nạn nhân.",
                                     choiceB: "B. Thực hiện các biện pháp hô hấp nhân tạo.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Xâm phạm tính mạng, sức khoẻ, tài sản của người bị nạn và người gây tai nạn.",
                                     choiceB: "B. Bỏ trốn sau khi gây ra tai nạn để trốn tránh trách nhiệm.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
            
        }else if(type == 4){ // =============================================================== bang C
            if(subtype == 0){ // cau hoi diem liet
                list.append(Question(questionText: "Hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Đỗ xe trên đường phố.",
                                     choiceB: "B. Sử dụng xe đạp đi trên các tuyến quốc lộ có tốc độ cao.",
                                     choiceC: "C. Làm hỏng (cố ý) cọc tiêu, gương cầu, dải phân cách.",
                                     choiceD: "D. Sử dụng còi và quay đầu xe trong khu dân cư.",
                                     answer: 3))
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?",
                                     choiceA: "A. Chỉ được thực hiện nếu đã hướng dẫn đầy đủ.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tuỳ từng trường hợp.",
                                     choiceD: "D. Chỉ được phép thực hiện với thành viên trong gia đình.",
                                     answer: 2))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?",
                                     choiceA: "A. Đi về phía bên trái.",
                                     choiceB: "B. Đi về phía bên phải.",
                                     choiceC: "C. Đi ở giữa.",
                                     choiceD: "D. Đi trên lề đường.",
                                     answer: 2))
                list.append(Question(questionText: "Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?",
                                     choiceA: "A. Đi ở làn bên phải trong cùng.",
                                     choiceB: "B. Đi ở làn phía bên trái.",
                                     choiceC: "C. Đi ở làn giữa.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?",
                                     choiceA: "A. Không bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm khi rất vội.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Được phép tùy từng trường hợp.",
                                     choiceD: "D. Phải đăng ký với cơ quan địa phương.",
                                     answer: 2))
                list.append(Question(questionText: "Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật Giao thông đường bộ?",
                                     choiceA: "A. Được phép sản xuất, sử dụng khi bị mất biển số.",
                                     choiceB: "B. Được phép mua bán, sử dụng khi bị mất biển số.",
                                     choiceC: "C. Nghiêm cấm sản xuất, mua bán, sử dụng trái phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Không được phép.",
                                     choiceC: "C. Tùy từng trường hợp.",
                                     choiceD: "D. Được phép với ô tô tải.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?",
                                     choiceA: "A. Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.",
                                     choiceB: "B. Ở phía trước hoặc phía sau của phần đường dành cho người đi bộ qua đường, trên đường quốc lộ, tại nơi đường bộ giao nhau không cùng mức với đường sắt.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?",
                                     choiceA: "A. Được dừng xe, đỗ xe trong trường hợp cần thiết.",
                                     choiceB: "B. Không được dừng xe, đỗ xe.",
                                     choiceC: "C. Được dừng xe, không được đỗ xe.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.",
                                     choiceC: "C. Tuỳ trường hợp.",
                                     choiceD: "D. Không được phép.",
                                     answer: 4))
                list.append(Question(questionText: "Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?",
                                     choiceA: "A. Được phép.",
                                     choiceB: "B. Tuỳ trường hợp.",
                                     choiceC: "C. Không được phép.",
                                     choiceD: "D. Được phép với người khuyết tật.",
                                     answer: 3))
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại  là gì?",
                                     choiceA: "A. Phần mặt đường và lề đường.",
                                     choiceB: "B. Phần đường xe chạy.",
                                     choiceC: "C. Phần đường xe cơ giới.",
                                     choiceD: "D. Lề đường không sử dụng cho người đi bộ.",
                                     answer: 2))
                list.append(Question(questionText: "“Làn đường” là gì?",
                                     choiceA: "A. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.",
                                     choiceB: "B. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.",
                                     choiceC: "C. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe ô tô chạy an toàn.",
                                     choiceD: "D. Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho người đi bộ",
                                     answer: 2))
                list.append(Question(questionText: "“Khổ giới hạn đường bộ” để xe và hàng hóa trên xe đi lại an toàn bao gồm những giới hạn nào?",
                                     choiceA: "A. Giới hạn về chiều cao hoặc chiều rộng của cầu đường.",
                                     choiceB: "B. Giới hạn về chiều cao và chiều rộng của cầu, đường.",
                                     choiceC: "C. Giới hạn về chiều rộng của cầu, đường.",
                                     choiceD: "D. Giới hạn về chiều cao của cầu, đường.",
                                     answer: 2))
                list.append(Question(questionText: "Khái niệm “dải phân cách” được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.",
                                     choiceB: "B. Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.",
                                     choiceC: "C. Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.",
                                     choiceD: "D. Là làn đường phân chia mặt đường cho người đi bộ.",
                                     answer: 1))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
                list.append(Question(questionText: "Thời gian làm việc của người lái xe ô tô không được lái xe liên tục quá bao nhiêu giờ trong trường hợp dưới đây?",
                                     choiceA: "A. Không quá 4 giờ.",
                                     choiceB: "B. Không quá 6 giờ.",
                                     choiceC: "C. Không quá 8 giờ.",
                                     choiceD: "D. Liên tục tùy thuộc vào sức khỏe và khả năng của người lái xe.",
                                     answer: 1))
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?",
                                     choiceA: "A. Cho xe chạy thật nhanh qua vũng nước.",
                                     choiceB: "B. Giảm tốc độ cho xe chạy chậm qua vũng nước.",
                                     choiceC: "C. Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?",
                                     choiceA: "A. Là bình thường.",
                                     choiceB: "B. Là thiếu văn hóa giao thông.",
                                     choiceC: "C. Là có văn hóa giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 2))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.",
                                     choiceB: "B. Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
        }else if(type == 5){ // =============================================================== bang F
            if(subtype == 0){ // cau hoi diem liet
                list.append(Question(questionText: "Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu có chất ma tuý ở mức nhẹ, có thể điều khiển phương tiện.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?",
                                     choiceA: "A. Không được phép.",
                                     choiceB: "B. Chỉ được lái ở tốc độ chậm và quãng đường ngắn.",
                                     choiceC: "C. Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?",
                                     choiceA: "A. Bị nghiêm cấm.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Không bị nghiêm cấm, nếu nồng độ cồn trong máu ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 1))
                list.append(Question(questionText: "Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?",
                                     choiceA: "A. Chỉ bị nhắc nhở.",
                                     choiceB: "B. Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.",
                                     choiceC: "C. Không bị xử lý hình sự.",
                                     choiceD: "D. Lập biên bản",
                                     answer: 2))
                list.append(Question(questionText: "Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?",
                                     choiceA: "A. Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.",
                                     choiceB: "B. Người ngồi phía sau người điều khiển xe cơ giới.",
                                     choiceC: "C. Người đi bộ.",
                                     choiceD: "D. Cả ý 1 và ý 2",
                                     answer: 1))
                list.append(Question(questionText: "Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?",
                                     choiceA: "A. Bị nghiêm cấm tuỳ từng trường hợp.",
                                     choiceB: "B. Không bị nghiêm cấm.",
                                     choiceC: "C. Bị nghiêm cấm.",
                                     choiceD: "D. Chưa có quy định.",
                                     answer: 3))
                list.append(Question(questionText: "Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?",
                                     choiceA: "A. Chỉ lớn hơn tốc độ tối đa cho phép khi đường vắng.",
                                     choiceB: "B. Chỉ lớn hơn tốc độ tối đa cho phép vào ban đêm.",
                                     choiceC: "C. Không vượt quá tốc độ cho phép.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
            }else if(subtype == 1){ // --------------------------------------------------------------------------------------------------- khai niem quy tac
                list.append(Question(questionText: "“Khổ giới hạn đường bộ” để xe và hàng hóa trên xe đi lại an toàn bao gồm những giới hạn nào?",
                                     choiceA: "A. Giới hạn về chiều cao hoặc chiều rộng của cầu đường.",
                                     choiceB: "B. Giới hạn về chiều cao và chiều rộng của cầu, đường.",
                                     choiceC: "C. Giới hạn về chiều rộng của cầu, đường.",
                                     choiceD: "D. Giới hạn về chiều cao của cầu, đường.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông phải nhường đường cho các phương tiện giao thông đến từ hướng khác tại nơi đường giao nhau, được cắm biển báo hiệu nhường đường là loại gì?",
                                     choiceA: "A. Đường ưu tiên.",
                                     choiceB: "B. Đường không ưu tiên.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường trong khu dân cư.",
                                     answer: 2))
                list.append(Question(questionText: "Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?",
                                     choiceA: "A. Đường không ưu tiên.",
                                     choiceB: "B. Đường tỉnh lộ.",
                                     choiceC: "C. Đường quốc lộ.",
                                     choiceD: "D. Đường ưu tiên.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?",
                                     choiceA: "A. Gồm xe đạp, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     choiceB: "B. Gồm xe đạp, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.",
                                     choiceC: "C. Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.",
                                     choiceD: "D. Gồm xe đạp, đạp máy, đạp điện, xe xích lô, xe lăn dùng cho người khuyết tật, xe xúc vật kéo và các loại xe tương tự.",
                                     answer: 4))
                list.append(Question(questionText: "“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?",
                                     choiceA: "A. Phương tiện giao thông cơ giới đường bộ.",
                                     choiceB: "B. Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người tham gia giao thông đường bộ” gồm những đối tượng nào?",
                                     choiceA: "A. Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.",
                                     choiceB: "B. Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?",
                                     choiceA: "A. Người điều khiển xe cơ giới, người điều khiển xe thô sơ.",
                                     choiceB: "B. Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.",
                                     choiceC: "C. Cả ý 1 và ý 2",
                                     choiceD: "D. Tẩt cả đều sai.",
                                     answer: 4))
            }else if(subtype == 2){ // --------------------------------------------------------------------------------------------------- he thong bien bao
                
            }else if(subtype == 3){ // --------------------------------------------------------------------------------------------------- van hoa dao duc
                list.append(Question(questionText: "Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?",
                                     choiceA: "A. Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển.",
                                     choiceB: "B.  hi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải được chủ hàng cho phép.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?",
                                     choiceA: "A. Kiểm tra các điều kiện bảo đảm an toàn của xe sau khi khởi hành; có trách nhiệm lái xe thật nhanh khi chậm giờ của khách.",
                                     choiceB: "B. Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định.",
                                     choiceC: "C. Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, đóng cửa lên xuống của xe trước và trong khi xe chạy.",
                                     choiceD: "D. Cả ý 2 và ý 3.",
                                     answer: 4))
                list.append(Question(questionText: "Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?",
                                     choiceA: "A. Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.",
                                     choiceB: "B. Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?",
                                     choiceA: "A. Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.",
                                     choiceB: "B. Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
                list.append(Question(questionText: "Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?",
                                     choiceA: "A. Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng.",
                                     choiceB: "B. Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực.",
                                     choiceC: "C. Nộp phí sử dụng đường bộ theo quy định.",
                                     choiceD: "D. Tất cả đáp án trên.",
                                     answer: 4))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?",
                                     choiceA: "A. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo.",
                                     choiceB: "B. Kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ; bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.",
                                     choiceC: "C. Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trên nóc xe xảy ra tai nạn để cảnh báo.",
                                     choiceD: "D. Cả ý 1 và ý 2.",
                                     answer: 1))
                list.append(Question(questionText: "Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?",
                                     choiceA: "A. Xâm phạm tính mạng, sức khoẻ, tài sản của người bị nạn và người gây tai nạn.",
                                     choiceB: "B. Bỏ trốn sau khi gây ra tai nạn để trốn tránh trách nhiệm.",
                                     choiceC: "C. Cả ý 1 và ý 2.",
                                     choiceD: "D. Tất cả đều sai.",
                                     answer: 3))
            }else if(subtype == 4){ // --------------------------------------------------------------------------------------------------- cau hoi sa hinh
                
            }
            
        }
        
        
    }
}
