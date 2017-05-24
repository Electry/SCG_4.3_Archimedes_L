.class Lcom/lenovo/scg/photos/AlbumActivity$7;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 380
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$800(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$900(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1000(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$200(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setmSelectPhotoView(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)V

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1000(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1100(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->setIamgeList(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumPhotoAdapter:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1000(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->notifyDataSetChanged()V

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1200(Lcom/lenovo/scg/photos/AlbumActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$7;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1100(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method
