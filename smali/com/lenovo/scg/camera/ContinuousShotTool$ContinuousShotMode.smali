.class public final enum Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;
.super Ljava/lang/Enum;
.source "ContinuousShotTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ContinuousShotTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContinuousShotMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

.field public static final enum MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

.field public static final enum MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    const-string v1, "MODE_FAST"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    new-instance v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    const-string v1, "MODE_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v1, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->$VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->$VALUES:[Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    return-object v0
.end method
