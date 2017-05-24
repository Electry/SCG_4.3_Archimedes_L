.class public final enum Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;
.super Ljava/lang/Enum;
.source "ContinuousShotTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ContinuousShotTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContinuousShotImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

.field public static final enum FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

.field public static final enum FORMAT_YUV:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    const-string v1, "FORMAT_JEPG"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    new-instance v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    const-string v1, "FORMAT_YUV"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_YUV:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    sget-object v1, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_YUV:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->$VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->$VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    return-object v0
.end method
