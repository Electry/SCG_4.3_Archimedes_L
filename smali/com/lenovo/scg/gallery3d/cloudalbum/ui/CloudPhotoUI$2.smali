.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;
.super Ljava/lang/Object;
.source "CloudPhotoUI.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showHeadBar(Z)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoEditView(Z)V

    .line 213
    :cond_0
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrollStateChanged()---arg0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 218
    const-string v0, "HWJ"

    const-string/jumbo v1, "onPageScrolled() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 224
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected arg0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method
