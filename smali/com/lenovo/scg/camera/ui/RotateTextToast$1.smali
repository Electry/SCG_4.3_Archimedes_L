.class Lcom/lenovo/scg/camera/ui/RotateTextToast$1;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/RotateTextToast;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;->this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;->this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;->this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;->this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;

    iget-object v1, v1, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;->this$0:Lcom/lenovo/scg/camera/ui/RotateTextToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 57
    return-void
.end method
