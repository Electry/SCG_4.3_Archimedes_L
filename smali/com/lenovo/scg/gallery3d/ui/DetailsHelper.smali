.class public Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;,
        Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;,
        Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "rootPane"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p3, "source"    # Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    invoke-direct {v0, p1, p3}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    .line 76
    return-void
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 122
    sparse-switch p1, :sswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 124
    :sswitch_0
    const v0, 0x7f0f068f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :sswitch_1
    const v0, 0x7f0f0690

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :sswitch_2
    const v0, 0x7f0f0691

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :sswitch_3
    const v0, 0x7f0f0692

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :sswitch_4
    const v0, 0x7f0f0693

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :sswitch_5
    const v0, 0x7f0f0694

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :sswitch_6
    const v0, 0x7f0f0695

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :sswitch_7
    const v0, 0x7f0f0696

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :sswitch_8
    const v0, 0x7f0f0697

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :sswitch_9
    const v0, 0x7f0f0698

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :sswitch_a
    const v0, 0x7f0f0699

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :sswitch_b
    const v0, 0x7f0f069a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :sswitch_c
    const v0, 0x7f0f069b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :sswitch_d
    const v0, 0x7f0f069c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :sswitch_e
    const v0, 0x7f0f069d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :sswitch_f
    const v0, 0x7f0f069e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :sswitch_10
    const v0, 0x7f0f069f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :sswitch_11
    const v0, 0x7f0f06a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :sswitch_12
    const v0, 0x7f0f06a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->cancel()V

    .line 111
    :cond_0
    return-void
.end method

.method public static resolveAddress(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;[DLcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "latlng"    # [D
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .prologue
    .line 95
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    .line 100
    :goto_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0
.end method

.method public static resolveResolution(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;

    .prologue
    .line 104
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;->onResolutionAvailable(II)V

    goto :goto_0
.end method


# virtual methods
.method public dismissDetailsLayout()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->dismissDetailsLayout()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->hide()V

    .line 119
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 81
    .local v0, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    sub-int v1, p4, p2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->measure(II)V

    .line 82
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 84
    .end local v0    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method public reloadDetails()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails()V

    .line 88
    return-void
.end method

.method public reloadDetails(ZI)V
    .locals 1
    .param p1, "isRotate"    # Z
    .param p2, "orientation"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails(ZI)V

    .line 188
    return-void
.end method

.method public setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 92
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setOrientationIndicator(IZ)V

    .line 177
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->show()V

    .line 115
    return-void
.end method

.method public showRotateDialog(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->mContainer:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;->showRotateDialog(I)V

    .line 171
    :cond_0
    return-void
.end method
