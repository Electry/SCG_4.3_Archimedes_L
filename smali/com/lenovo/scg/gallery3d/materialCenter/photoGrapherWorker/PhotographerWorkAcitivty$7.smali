.class Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;
.super Ljava/lang/Object;
.source "PhotographerWorkAcitivty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 907
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherBackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 909
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hide()V

    .line 911
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f075c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->showProgressBar()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2500(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    .line 920
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->SearchPhotoGrapherInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 921
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 923
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->finish()V

    goto :goto_0
.end method
