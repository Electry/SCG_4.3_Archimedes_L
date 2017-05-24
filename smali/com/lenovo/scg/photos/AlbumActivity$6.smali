.class Lcom/lenovo/scg/photos/AlbumActivity$6;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;

.field final synthetic val$isReplaceImage:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;Z)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    iput-boolean p2, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->val$isReplaceImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 7
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 353
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$300(Lcom/lenovo/scg/photos/AlbumActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$700(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const v3, 0x7f0f076f

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->notifyDataChange(Ljava/util/ArrayList;)V

    .line 371
    iget-boolean v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->val$isReplaceImage:Z

    if-eqz v1, :cond_1

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, "imageIntent":Landroid/content/Intent;
    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/photos/AlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->finish()V

    .line 378
    .end local v0    # "imageIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$700(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const v3, 0x7f0f076e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$6;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
