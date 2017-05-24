.class Lcom/lenovo/scg/photos/AlbumActivity$5;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;


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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 6
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$300(Lcom/lenovo/scg/photos/AlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$700(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const v2, 0x7f0f076f

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$700(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const v2, 0x7f0f076e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumActivity$5;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/photos/AlbumActivity;->access$600(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/photos/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
