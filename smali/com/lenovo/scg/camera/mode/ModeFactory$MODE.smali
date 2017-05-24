.class public final enum Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
.super Ljava/lang/Enum;
.source "ModeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ModeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static final enum VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 19
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 21
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "NIGHT"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 23
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "HDR"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "SMART_HDR"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 27
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "PIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 29
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "SUPERNIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 31
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "REWIND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 33
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "REMOVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 35
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "QRCODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 37
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "PANORAMA360"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 39
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "LONG_EXPOSURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 41
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "STROBEPHOTO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 43
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "VIV"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 45
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "SPECIAL_EFFECTS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 47
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "ART_HDR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 49
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "TUTORIALS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 51
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "CONTINUOUS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 53
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "FRONTCAMERA"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 55
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "FRONTBEAUTYCAMERA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 57
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "SMART"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 59
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "PORTRAIT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 61
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "LANDSCAPE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 63
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "VIDEO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 65
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "IMAGECAPTURE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 67
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "REALNIGHT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 69
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "DYNAMICNIGHT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->$VALUES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->$VALUES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-object v0
.end method
