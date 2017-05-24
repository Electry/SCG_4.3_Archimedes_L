.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;
.super Ljava/lang/Object;
.source "TopGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

.field final synthetic val$bitmapid:I

.field final synthetic val$holder:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;ILcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->val$bitmapid:I

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->val$holder:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mShowSingleImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mShowSingleImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->val$bitmapid:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mClickListener:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->val$bitmapid:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;->OnTopGalleryClick(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mClickListener:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->val$holder:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mGroup:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;->OnTopGalleryItemClick(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 180
    :cond_0
    return-void
.end method
