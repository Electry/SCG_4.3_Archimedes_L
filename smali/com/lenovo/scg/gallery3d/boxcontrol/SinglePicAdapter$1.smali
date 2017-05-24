.class Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;
.super Ljava/lang/Object;
.source "SinglePicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

.field final synthetic val$imageSelectLayer:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 123
    .local v0, "i":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->mIsReplaceImage:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 141
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 146
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SinglePicAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto :goto_1
.end method
