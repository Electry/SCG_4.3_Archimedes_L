.class public final enum Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;
.super Ljava/lang/Enum;
.source "FrontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/front/FrontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RATIO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

.field public static final enum BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

.field public static final enum SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    const-string v1, "SAMLL"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    new-instance v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->$VALUES:[Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->$VALUES:[Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    return-object v0
.end method
