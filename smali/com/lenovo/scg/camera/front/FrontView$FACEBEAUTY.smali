.class final enum Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;
.super Ljava/lang/Enum;
.source "FrontView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/front/FrontView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FACEBEAUTY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

.field public static final enum AUTO:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

.field public static final enum OFF:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

.field public static final enum ON:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->ON:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    new-instance v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->OFF:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    new-instance v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->AUTO:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->ON:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->OFF:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->AUTO:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->$VALUES:[Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->$VALUES:[Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    return-object v0
.end method
