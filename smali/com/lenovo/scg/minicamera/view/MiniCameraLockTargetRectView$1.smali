.class Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView$1;
.super Ljava/lang/Object;
.source "MiniCameraLockTargetRectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->setRect(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView$1;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView$1;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraLockTargetRectView;->setVisibility(I)V

    .line 68
    return-void
.end method
