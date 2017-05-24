.class public Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;
.super Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
.source "FreedomMosaic.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private mBackgroudBgs:[Landroid/widget/ImageView;

.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

.field private mFreedomBgFive:Landroid/widget/ImageView;

.field private mFreedomBgFour:Landroid/widget/ImageView;

.field private mFreedomBgOne:Landroid/widget/ImageView;

.field private mFreedomBgThree:Landroid/widget/ImageView;

.field private mFreedomBgTwo:Landroid/widget/ImageView;

.field private mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

.field private mFreedomTemplateFive:Landroid/widget/ImageView;

.field private mFreedomTemplateFour:Landroid/widget/ImageView;

.field private mFreedomTemplateOne:Landroid/widget/ImageView;

.field private mFreedomTemplateThree:Landroid/widget/ImageView;

.field private mFreedomTemplateTwo:Landroid/widget/ImageView;

.field private mPuzzleTitle:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mTemplateBgs:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;-><init>(Landroid/content/Context;)V

    .line 47
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    .line 49
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->ctx:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mSelectImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    const/4 v5, 0x5

    .line 61
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;-><init>(Landroid/content/Context;)V

    .line 47
    new-array v4, v5, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    .line 49
    new-array v4, v5, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->ctx:Landroid/content/Context;

    .line 64
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 93
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 69
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 71
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 73
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->ctx:Landroid/content/Context;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initTemplateLayout(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    const-string v1, "1/5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f020869

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f02086a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f02086b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f02086c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f02086d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f02086e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f02086f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f020870

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f020871

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f020872

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f020873

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f020874

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f020875

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f020876

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f020877

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f020878

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f020879

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f02087a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f02087b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f02087c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 189
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f02087d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f02087e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f02087f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f020880

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f020881

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f020882

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f020883

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f020884

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f020885

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f020886

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 205
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f020887

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f020888

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f020889

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f02088a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f02088b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    const v1, 0x7f02088c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    const v1, 0x7f02088d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    const v1, 0x7f02088e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    const v1, 0x7f02088f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    const v1, 0x7f020890

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setCurrentSelect(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method private showFrameThumbnailBackground(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    return-void
.end method

.method private showTemplateThumbnailBackground(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    return-void
.end method


# virtual methods
.method public getFrameOrBackgroundRes()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getFreedomMosaicBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getFrameOrBackgroundResIndex()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getFreedomMosaicBackgroundIndex()I

    move-result v0

    return v0
.end method

.method public getmFeedomMosaicView()Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    return-object v0
.end method

.method public initMosaic(Landroid/widget/RelativeLayout;)V
    .locals 11
    .param p1, "rootlayout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "backgroundTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0785

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    .local v1, "menuPanel":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f100800

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 102
    .local v2, "templateMosaicMenu":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007d6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    .line 105
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mPuzzleTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007e8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f100813

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    .line 111
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBitmaps(Ljava/util/ArrayList;)V

    .line 113
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007ec

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    .line 114
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateOne:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007ee

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateTwo:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    .line 118
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateThree:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f2

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFour:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    .line 122
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomTemplateFive:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f7

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgOne:Landroid/widget/ImageView;

    .line 124
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgOne:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007f9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgTwo:Landroid/widget/ImageView;

    .line 126
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgTwo:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007fb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgThree:Landroid/widget/ImageView;

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgThree:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007fd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFour:Landroid/widget/ImageView;

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFour:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1007ff

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFive:Landroid/widget/ImageView;

    .line 132
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFive:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgOne:Landroid/widget/ImageView;

    const v4, 0x7f020864

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgTwo:Landroid/widget/ImageView;

    const v4, 0x7f020865

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgThree:Landroid/widget/ImageView;

    const v4, 0x7f020866

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFour:Landroid/widget/ImageView;

    const v4, 0x7f020867

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomBgFive:Landroid/widget/ImageView;

    const v4, 0x7f020868

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007eb

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v7

    .line 139
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007ed

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v9

    .line 140
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007ef

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v10

    .line 141
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007f1

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 142
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mTemplateBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007f3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v8

    .line 143
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007f6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v7

    .line 144
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007f8

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v9

    .line 145
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007fa

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v10

    .line 146
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007fc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 147
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBackgroudBgs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f1007fe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v8

    .line 148
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 149
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->initTemplateLayout(I)V

    .line 151
    return-void
.end method

.method public obtainMosaicedPhoto()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    :pswitch_0
    return-void

    .line 227
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    const v1, 0x7f02085f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    const v1, 0x7f020860

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    goto :goto_0

    .line 235
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    const v1, 0x7f020861

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    goto :goto_0

    .line 239
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    const v1, 0x7f020862

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    goto :goto_0

    .line 243
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showFrameThumbnailBackground(I)V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    const v1, 0x7f020863

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    goto :goto_0

    .line 247
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplateAndInvalidate(I)V

    .line 249
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->setCurrentSelect(I)V

    goto :goto_0

    .line 252
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplateAndInvalidate(I)V

    .line 254
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->setCurrentSelect(I)V

    goto :goto_0

    .line 257
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplateAndInvalidate(I)V

    .line 259
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->setCurrentSelect(I)V

    goto :goto_0

    .line 262
    :pswitch_9
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplateAndInvalidate(I)V

    .line 264
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->setCurrentSelect(I)V

    goto :goto_0

    .line 267
    :pswitch_a
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->showTemplateThumbnailBackground(I)V

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplateAndInvalidate(I)V

    .line 269
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->setCurrentSelect(I)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x7f1007ec
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public releaseMoasicResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->destroyFreedomView()V

    .line 283
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 287
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 294
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 295
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mBitmapList:Ljava/util/ArrayList;

    .line 297
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public setFrameOrBackgroundRes(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->setFreedomMosaicBackgroundRes(I)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mFeedomMosaicView:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setBackGroud(I)V

    .line 303
    return-void
.end method

.method public setFrameOrBackgroundResIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->setFreedomMosaicBackgroundIndex(I)V

    .line 308
    return-void
.end method
