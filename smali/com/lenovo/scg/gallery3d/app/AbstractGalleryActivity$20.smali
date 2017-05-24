.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;
.super Landroid/os/Handler;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2941
    iget v7, p1, Landroid/os/Message;->what:I

    const v8, 0x9111

    if-ne v7, v8, :cond_1

    .line 2942
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 2943
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "Cloud storage total size"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 2944
    .local v5, "total":F
    const-string v7, "Cloud storage used size"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 2945
    .local v6, "used":F
    const-string v7, "Cloud storage surplus size"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 2947
    .local v4, "surplus":F
    sput v5, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    .line 2948
    sput v4, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSurplus:F

    .line 2949
    sput v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUsed:F

    .line 2950
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2951
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2952
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_0

    instance-of v7, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    if-eqz v7, :cond_0

    .line 2953
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "Cloud init login state action"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2956
    .end local v0    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_1

    .line 2957
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f100708

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2959
    .local v3, "store_used":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f100709

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2961
    .local v2, "store_total":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUsed:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2963
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2966
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "store_total":Landroid/widget/TextView;
    .end local v3    # "store_used":Landroid/widget/TextView;
    .end local v4    # "surplus":F
    .end local v5    # "total":F
    .end local v6    # "used":F
    :cond_1
    return-void
.end method
