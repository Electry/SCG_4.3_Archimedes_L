.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;
.super Ljava/lang/Object;
.source "CloudPhotoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->val$view:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;I)I

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;->onClick(Ljava/lang/String;)V

    .line 229
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClickPhoto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const-string v0, "HWJ"

    const-string v1, "mPhotoPager.setOnClickListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
