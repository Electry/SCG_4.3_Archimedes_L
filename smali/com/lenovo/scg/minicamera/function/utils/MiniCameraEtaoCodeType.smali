.class public Lcom/lenovo/scg/minicamera/function/utils/MiniCameraEtaoCodeType;
.super Ljava/lang/Object;
.source "MiniCameraEtaoCodeType.java"


# static fields
.field public static final BAR:I = 0x0

.field public static final CODE128:I = 0x5

.field public static final CODE39:I = 0x4

.field public static final EAN13:I = 0x0

.field public static final EAN8:I = 0x1

.field public static final Express:I = 0x2

.field public static final QR:I = 0x1

.field public static final UPCA:I = 0x2

.field public static final UPCE:I = 0x3

.field public static final strTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EAN13"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EAN8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UPCA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UPCE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CODE39"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CODE128"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/minicamera/function/utils/MiniCameraEtaoCodeType;->strTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
