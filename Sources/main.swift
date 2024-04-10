


// 循环语句for
//区间
for idx in 1...5 {
  print(idx)
  
}
//步伐
for idx in stride(from: 1, through: 10, by: 2) {
  print(idx)
  
}
//数组
let names = ["1","2","3"]
for name in names {
  print(name)
  
}
//集合
let lista = Set(["张三","李四","王五"])
for item in lista{
  print(item)
  
}
//字典
let dica = ["a":"张三","b":"李四"]
for (k,v) in dica {
  print(k,v)
  
}
// while  后执行
var windx = 1;
while windx<=10 {
  print("你好\(windx)")
  windx+=1
}

//repeat  先执行
var idxa = 1;
repeat {
  print("你好\(idxa)")
  idxa+=1
} while idxa<=10

// 案例
// 计算从1加到100
var totala = 0;
for idx in 1...100 {
  totala+=idx
}
print("totala",totala)
// 99乘法表
// for方式
for i in 1...9{
  for j in 1...i{
      print("\(j) * \(i) = \(i*j)",terminator: "\t")
  }
  print("\n")
}
// while方式
var idxb = 1;
while idxb<=9 {
  var idxc = 1
  while idxc<=idxb {
     print("\(idxc) * \(idxb) = \(idxc*idxb)",terminator: "\t")
    idxc+=1
  }
    print("\n")
  idxb+=1
}


print("----------------------")
// if语句
var score = 99
var check = score>60 ? "合格" : "不合格"
print(check)

if score > 60{
  print("合格")
}else{
  print("不合格")
}

// print("请你输入成绩:",terminator: "")
// 这儿"!"用于解包 如果确定能解包可以这样用
// var inputa: String = readLine()!
// if let scoreb = Int(inputa){
//   if scoreb >= 90{
//     print("完美")
//   }else if scoreb >= 80{
//     print("优秀")
//   }else if scoreb >= 60{
//     print("及格")
//   }else{
//     print("不及格")
//   }
// }

var scorec = 200

// switch语句
switch scorec {
case 101...:
  print("你作弊了")
  fallthrough //如果当前条件不想触发了就会跌落到下个case进行执行
case 100:
  print("牛逼")
case 90...99:
  print("完美")
case 80,81,82,83,84,85,86,87,88,89:
  print("优秀")
case 60..<80:
  print("及格")
default:
  print("不及格")
}
// 条件判断
switch scorec {
case let s where s>90:
  print("完美")
default:
  print("及格")
}
//坐标判断
var posa = (0,0)
switch posa {
case (0,0):
  print("在原点")
case (0,let y):
  print("点在y轴\(y)")
case (let x,0):
  print("点在x轴\(x)")
case (let x,let y):
  print("点在\(x),\(y)")
  
}
print("----------------------")
// 函数
// 定义 带参数
func hello(name:String){
  print("你好,\(name)")
  
}
// 调用
hello(name: "张三")

// 带参数和返回值
func hellob(name:String) -> String {
  return "你好,\(name)"
}
print(hellob(name: "李四"))

// 传入多个参数
func helloc(name:String,age:Int){
  print("name:\(name),age:\(age)")
}
helloc(name:"张三",age: 18)
// 返回多个参数
func hellod(name:String,age:Int) -> (String,Int){
  return (name,age)
}
print(hellod(name: "张三a", age: 19))

// 参数别名
func helloe(第一个参数 a:Int,第二个参数 b:Int) -> Int {
  return a+b
}
print(helloe(第一个参数: 1, 第二个参数: 2))

// 不显示参数名
func hellof(_ a:Int,_ b:Int) -> Int {
  return a+b
}
print(hellof( 1, 2))

// 不定参数
func hellog(_ a:Int...) -> Int {
  var sum = 0
  for i in a{
    sum+=i
  }
  return sum
}
helloi(1,100)
// 指定无返回值
func helloi(_ a:Int...) -> Void {
  var sum = 0
  for i in a{
    sum+=i
  } 
  print(sum)
} 
helloi(1,2,3)
// 带入参数计算并改变值
func helloj(a: inout Int) {
  a+=1
} 
var tempj = 0;
helloj(a: &tempj)
print(tempj)

print("----------------------")
// 枚举
// 有限状态的集合
// 比如: 星期 性别 月份 404错误码
// 使用原因 : 助记
enum Weekday {
  case 星期一
  case 星期二
  case 星期三
  case 星期四
  case 星期五
  case 星期六
  case 星期天
}
let weeka = Weekday.星期一
print(weeka)
print(type(of: weeka))

// 在一行声明
enum Pos {
  case  东,南,西,北
}
print(Pos.东)
var posb = Pos.东
//如果是变量赋值,可以省略前面的枚举
posb = .北
print(posb)
// 遍历枚举  需要继承CaseIterable
enum EmName:CaseIterable {
  case  东,南,西,北
}
for i in EmName.allCases{
  print("i",i)
}
// 原始值
enum EmNameb:Int {
  case man   //默认第一个是0
  case woman  = 11
  case unknow   //是前一个+1
}  
print(EmNameb.man.rawValue)
print(EmNameb.woman.rawValue)
print(EmNameb.unknow.rawValue)

print("----------------------")
// 闭包(匿名函数)

// 函数
func bba() -> () {
  print("你好")
  
}
bba()

// 匿名函数
let hi = {
  print("你好")
}
//代用
hi()
// 匿名函数 - 传入参数
let hia = {
  (name:String) in 
  print("你好:\(name)")
}
hia("张三")
// 匿名函数 - 传入参数+返回参数
let hib = {
  (a:Int,b:Int) -> Int in   
  a+b
}
print(hib(1,3))
// 匿名函数 - 无传参 + 返回值
let hic = {
  ()->String in
  return "你好"
}
print(hic())
// 传入闭包
func sayHi(action:()->Void){
  action()
  print("张三")
}
let act = {
  print("你好")
}
// 调用
sayHi(action: act)
// 尾随闭包,函数的参数是最后一个才行
sayHi {
  print("hello")
}
// $的参数
func test(action:(String,Int) -> String){
  print("开始")
  print(action("西安",30))
  print("结束")
}
test{
  "火车以\($1)km/h的速速去\($0)"
}
test{
  (name:String,speed:Int) in
  "火车以\(speed)km/h的速速去\(name)"
}
test(action:{
  (name:String,speed:Int) in
  "火车以\(speed)km/h的速速去\(name)"
})
// 返回参数是一个函数
func test2() -> (String) ->  Void{
  print("获取函数")
  var counter = 1;
  return{
    (name:String) in
    print("你好\(name),第\(counter)次调用")
    counter+=1
  }
}
let fc = test2()
print("执行返回函数")
fc("张三")
fc("张三")

print("----------------------")
// 数组
let numbera = [1,2,3,4,5,6,7,8,9,10]

// map作用:产生新的数组,每一个元素要经过map加工
let n1 = numbera.map{
    n in 
    n * n
}
print("n1",n1)
// filter作用:产生新的数组,每一个元素要经过filter过滤,true返回,false就丢弃
let n2 = numbera.filter{
    n in 
    n > 5
}
print("n2",n2)
// 累加 
let n3 = numbera.reduce(0,{
  $0  + $1  
})
print(n3)
print("----------------------")

// 结构体(类)

struct Student {
  static let tableName = "成绩表"
  var name = ""
  var age:Int? = nil
  var chinese:Int? = nil
  var math:Int? = nil
  var total:Int? = nil
  mutating func calc(){
    self.total = self.chinese! + self.math!
  }
}
var person1 = Student(name:"张三",age:18,chinese:60,math:90)
person1.calc()
print(person1)
