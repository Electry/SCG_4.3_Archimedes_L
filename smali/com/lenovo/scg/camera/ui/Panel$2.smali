.class Lcom/lenovo/scg/camera/ui/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mBringToFront:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/Panel;->access$100(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/Panel;->bringToFront()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/Panel;->initChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$2;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v1, v1, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/Panel;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_1
    return-void
.end method
