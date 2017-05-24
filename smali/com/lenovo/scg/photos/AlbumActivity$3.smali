.class Lcom/lenovo/scg/photos/AlbumActivity$3;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 271
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    iput-boolean p2, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->val$isReplaceImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 277
    sput-boolean v7, Lcom/lenovo/scg/photos/AlbumActivity;->isAddOrDelete:Z

    .line 280
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 281
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const v6, 0x7f0f0778

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 307
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-boolean v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->val$isReplaceImage:Z

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->finish()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mIsFromGif:Z
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$300(Lcom/lenovo/scg/photos/AlbumActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v4, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 293
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.GIFPREVIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "gifIntent":Landroid/content/Intent;
    const-string/jumbo v5, "pathList"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 298
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v5, v0, v7}, Lcom/lenovo/scg/photos/AlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 300
    .end local v0    # "gifIntent":Landroid/content/Intent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->PUZZLE_ACTION:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->access$400(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "photos"

    iget-object v6, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v6}, Lcom/lenovo/scg/photos/AlbumActivity;->access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 304
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/photos/AlbumActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumActivity$3;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/photos/AlbumActivity;->finish()V

    goto :goto_0
.end method
