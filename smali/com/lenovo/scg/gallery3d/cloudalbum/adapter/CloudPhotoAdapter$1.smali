.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "CloudPhotoAdapter.java"


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

.field final synthetic val$loadingBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->val$loadingBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->val$loadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->val$loadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "errMsg":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$3;->$SwitchMap$com$lenovo$scg$gallery3d$cloudalbum$imageloader$nostra13$universalimageloader$core$assist$FailReason$FailType:[I

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/FailReason;->getType()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/FailReason$FailType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/FailReason$FailType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->val$loadingBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    return-void

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    goto :goto_0

    .line 196
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;->val$loadingBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    return-void
.end method
