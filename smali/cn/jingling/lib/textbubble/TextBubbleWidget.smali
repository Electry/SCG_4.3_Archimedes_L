.class public Lcn/jingling/lib/textbubble/TextBubbleWidget;
.super Ljava/lang/Object;
.source "TextBubbleWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;
    }
.end annotation


# static fields
.field private static final label:Ljava/lang/String; = "\u6587\u5b57\u6ce1\u6ce1"


# instance fields
.field private bubbleConfigArrayRes:I

.field private mActivity:Landroid/app/Activity;

.field private mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

.field private mOnEditingCallback:Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

.field private mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;III)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "operaterDrawableRes"    # I
    .param p3, "delDrawableRes"    # I
    .param p4, "bubbleConfigArray"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 30
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0, p2, p3}, Lcn/jingling/lib/textbubble/ScreenControl;->setAccessoryDrawableRes(II)V

    .line 31
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mActivity:Landroid/app/Activity;

    .line 32
    iput p4, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->bubbleConfigArrayRes:I

    .line 33
    const-string/jumbo v0, "\u6587\u5b57\u6ce1\u6ce1"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public init(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageContainer"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/jingling/lib/textbubble/ScreenInfo;->setScreenInfo(Landroid/app/Activity;)V

    .line 45
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/jingling/lib/textbubble/ScreenControl;->initWithActivity(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    .line 46
    new-instance v0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    .line 47
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->perform()V

    .line 49
    return-void
.end method

.method public leaveEditing()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing()V

    .line 120
    return-void
.end method

.method public leaveEditing(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcn/jingling/lib/textbubble/TextBubbleWidget;->performAdd(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public onSave()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->onOk()Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEffectMode:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public performAdd(Landroid/content/Context;I)V
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 66
    .local v8, "resources":Landroid/content/res/Resources;
    iget v9, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->bubbleConfigArrayRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 67
    .local v5, "mIds":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v5, p2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 70
    .local v3, "itemArray":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "pngName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 72
    .local v4, "mAssetManager":Landroid/content/res/AssetManager;
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "images/bubble_hq/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v4, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 72
    invoke-direct {v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v1, "buf":Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 78
    new-instance v6, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    invoke-direct {v6, v3}, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;-><init>(Landroid/content/res/TypedArray;)V

    .line 79
    .local v6, "mTextBubbleStyleParameter":Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    iput p2, v6, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    .line 81
    iget v9, v6, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v10

    iget v10, v10, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    if-eq v9, v10, :cond_0

    .line 82
    iget-object v9, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    if-eqz v9, :cond_0

    .line 83
    iget-object v9, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    invoke-virtual {v9, v0, v6}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->onAdding(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 87
    :cond_0
    if-eqz v5, :cond_1

    .line 88
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "itemArray":Landroid/content/res/TypedArray;
    .end local v4    # "mAssetManager":Landroid/content/res/AssetManager;
    .end local v5    # "mIds":Landroid/content/res/TypedArray;
    .end local v6    # "mTextBubbleStyleParameter":Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    .end local v7    # "pngName":Ljava/lang/String;
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->release()V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mAddingBubbleEffect:Lcn/jingling/lib/textbubble/AddingBubbleEffect;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->release()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/TextBubbleWidget;->setOnEditingCallback(Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;)V

    .line 55
    return-void
.end method

.method public setOnEditingCallback(Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;)V
    .locals 1
    .param p1, "callback"    # Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleWidget;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/ScreenControl;->setOnEditingCallback(Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;)V

    .line 115
    return-void
.end method
