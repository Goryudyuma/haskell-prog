type FirstName = String

type LastName = String

type Age = Int

type Height = Int

type PatientName = (String, String)

firstName :: PatientName -> String
firstName = fst

lastName :: PatientName -> String
lastName = snd

data Sex
  = Male
  | Female

sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'

data RhType
  = Pos
  | Neg

data ABOType
  = A
  | B
  | AB
  | O

data BloodType =
  BloodType ABOType RhType

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

patientInfo :: PatientName -> Age -> Height -> String
patientInfo patient age height = name ++ " " ++ ageHeight
  where
    name = lname ++ ", " ++ fname
    ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"
    lname = lastName patient
    fname = firstName patient
