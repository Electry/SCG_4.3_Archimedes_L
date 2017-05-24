.class Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;
.super Ljava/lang/Object;
.source "AlbumPhotoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

.field final synthetic val$imageSelectLayer:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0f0777

    const/4 v6, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 130
    .local v0, "i":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const-string/jumbo v1, "panhui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string/jumbo v1, "panhui"

    const-string v2, "image is not selected!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsReplaceImage:Z
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$000(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f078e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$400(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$400(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v1, "panhui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image is not selected!! mIsFromGif = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsFromGif:Z
    invoke-static {v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$200(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsReplaceImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsReplaceImage:Z
    invoke-static {v3}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$000(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsFromGif:Z
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$200(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsReplaceImage:Z
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$000(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$300(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 146
    const-string/jumbo v1, "panhui"

    const-string v2, "111111111111111111111111111"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0775

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mIsFromGif:Z
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$200(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mSelectPhotoView:Lcom/lenovo/scg/photos/views/SelectedPhotoView;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$300(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 151
    const-string/jumbo v1, "panhui"

    const-string v2, "222222222222222222222222222"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0776

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 156
    :cond_4
    const-string/jumbo v1, "panhui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v1

    if-gtz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 162
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v1

    if-gtz v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 167
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x2

    if-le v1, v2, :cond_7

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 171
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_8

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 176
    :cond_8
    const-string/jumbo v1, "panhui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image miniThumbBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string/jumbo v1, "panhui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image isNotCanBeSelected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isNotCanBeSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isNotCanBeSelected()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->this$0:Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;

    # getter for: Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;->access$100(Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 190
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/photos/adapters/AlbumPhotoAdapter$1;->val$imageSelectLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto/16 :goto_1
.end method
