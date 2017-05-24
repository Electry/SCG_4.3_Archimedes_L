.class Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;
.super Landroid/os/AsyncTask;
.source "LeftPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LeftPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsynTaskShowLeftPanel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 1
    .param p1, "stepSize"    # [Ljava/lang/Integer;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->publishProgress([Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "stepSize"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .local v0, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 170
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->left_panel_width:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->access$200(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 177
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 178
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 179
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void

    .line 173
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->left_panel_width:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->access$200(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
