.class Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;
.super Ljava/lang/Object;
.source "RewindSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initScroll(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

.field final synthetic val$l:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;I)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    iput p2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;->val$l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$400(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;->val$l:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # invokes: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->startAnimP2()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$500(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V

    .line 260
    return-void
.end method
