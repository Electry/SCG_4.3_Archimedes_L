.class public Lcom/lenovo/scg/camera/ContinuousShotTool$OneShotNotifyListener;
.super Ljava/lang/Object;
.source "ContinuousShotTool.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ContinuousShotTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneShotNotifyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool$OneShotNotifyListener;->this$0:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 4
    .param p1, "notify"    # I

    .prologue
    .line 534
    const-string v0, "enter OnDebugNotify, notify = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    return-void
.end method
