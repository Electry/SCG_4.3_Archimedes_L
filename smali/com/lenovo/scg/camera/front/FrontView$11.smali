.class Lcom/lenovo/scg/camera/front/FrontView$11;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->showSupplyHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$11;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1493
    const-string v0, "FrontView"

    const-string v1, "mFrontSupplyHint_v, onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$11;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->removeFirstEnterSupplyHintView()Z

    .line 1497
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
