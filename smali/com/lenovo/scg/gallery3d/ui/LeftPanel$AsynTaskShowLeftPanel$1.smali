.class Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;
.super Landroid/os/Handler;
.source "LeftPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .local v0, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getWidth()I

    move-result v2

    neg-int v2, v2

    if-ne v1, v2, :cond_1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->isShowing:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->access$002(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;Z)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Integer;

    check-cast v1, [Ljava/lang/Integer;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->access$100(Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
