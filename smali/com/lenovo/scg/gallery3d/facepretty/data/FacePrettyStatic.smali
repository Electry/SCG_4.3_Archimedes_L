.class public Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;
.super Ljava/lang/Object;
.source "FacePrettyStatic.java"


# static fields
.field public static ARCSOFT_DEF_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam; = null

.field public static ARCSOFT_MAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam; = null

.field public static ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam; = null

.field public static ARCSOFT_WOMAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam; = null

.field public static final CHECKING:J = -0x1L

.field public static final CREAT_FIRST_EFFECT:I = -0xffffeff

.field public static final ENLARGEEYE:I = 0x1

.field public static final FACEPRETTY_REQUEST_CODE:I = -0xeffffff

.field public static final FACEWHITE:I = 0x2

.field public static final IS_FROM_GOLDBOX:Ljava/lang/String; = "is_from_goldbox"

.field public static final KEY_EFFECT_EYE_VIVI:Ljava/lang/String; = "eye_vivi"

.field public static final KEY_EFFECT_EYE_WIDE:Ljava/lang/String; = "eye_wide"

.field public static final KEY_EFFECT_SMALL:Ljava/lang/String; = "face_small"

.field public static final KEY_EFFECT_WHITE:Ljava/lang/String; = "face_white"

.field public static final KEY_ISHAVEREADCOURSE:Ljava/lang/String; = "isHaveReadCourse"

.field public static final KEY_SELECT_FACE_ID:Ljava/lang/String; = "selectRecIndex"

.field public static final MEITONG:I = 0x0

.field public static final SELECT_WHAT:Ljava/lang/String; = "select_what"

.field public static final SMALLFACE:I = 0x3

.field public static final START_PRETTY_LOOPLY:I = -0x10000000

.field public static final UNAVAILABLE:J = -0x2L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field public static isForArcSoft:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/data/ManFacePrettyParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/data/ManFacePrettyParam;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_MAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/data/WomanFacePrettyParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/data/WomanFacePrettyParam;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_WOMAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 47
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/data/OtherFacePrettyParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/data/OtherFacePrettyParam;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_DEF_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
