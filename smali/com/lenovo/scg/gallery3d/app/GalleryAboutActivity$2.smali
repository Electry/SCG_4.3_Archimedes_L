.class Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;
.super Ljava/lang/Object;
.source "GalleryAboutActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCode:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$100(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->isNeedUpdateVersionName(Landroid/content/SharedPreferences;I)Z

    move-result v0

    .line 253
    .local v0, "isNeedUpdate":Z
    const-string v2, "VerName"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "VerName"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "mVName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$200(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 256
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$300(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0868

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .end local v1    # "mVName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local v1    # "mVName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$300(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0f07fb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
