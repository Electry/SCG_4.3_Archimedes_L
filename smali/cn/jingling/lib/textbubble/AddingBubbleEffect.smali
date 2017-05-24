.class public Lcn/jingling/lib/textbubble/AddingBubbleEffect;
.super Lcn/jingling/lib/textbubble/AddingEffect;
.source "AddingBubbleEffect.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AddingEffect;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "toastId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AddingEffect;-><init>()V

    .line 33
    return-void
.end method

.method private setNewStateBack()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method


# virtual methods
.method public onAdding(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "Param"    # Ljava/lang/Object;

    .prologue
    .line 93
    const-string v5, ""

    .line 94
    .local v5, "oldText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    .local v6, "tempFlag":Z
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .local v4, "oldMatrix":Landroid/graphics/Matrix;
    move-object v3, p2

    .line 96
    check-cast v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .line 98
    .local v3, "mTextBubbleStyleParameter":Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    :try_start_0
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget v7, v7, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v7, :cond_1

    .line 99
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget v7, v7, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v8, v8, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v7, v8, :cond_1

    .line 101
    const/4 v6, 0x1

    .line 102
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v7, v7, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 103
    iget-object v8, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget v8, v8, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 104
    .local v2, "mTextBubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 107
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubble;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubble;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_0
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget v8, v8, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/ScreenControl;->deleteText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2    # "mTextBubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v7, p1, v3}, Lcn/jingling/lib/textbubble/ScreenControl;->addTextBubble(Landroid/graphics/Bitmap;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;)Lcn/jingling/lib/textbubble/TextBubbleControl;

    move-result-object v2

    .line 117
    .restart local v2    # "mTextBubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {v2, v4}, Lcn/jingling/lib/textbubble/TextBubbleControl;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 130
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v7, v7, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, "arralyListSize":I
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v7, v7, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    .line 132
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->inValidateImageView()V

    .line 135
    .end local v0    # "arralyListSize":I
    :cond_2
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v8

    iget v8, v8, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    iput v8, v7, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 138
    if-eqz v5, :cond_3

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 139
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcn/jingling/lib/textbubble/TextBubble;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_3
    return-void

    .line 112
    .end local v2    # "mTextBubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCallBack()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v0, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v1, v1, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->clearAddingText()V

    .line 148
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingText(Ljava/lang/Boolean;)V

    .line 149
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing()V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 215
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 217
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/GroundImage;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 232
    :cond_1
    :goto_0
    return v4

    .line 220
    :cond_2
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-nez v2, :cond_1

    .line 221
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 222
    .local v1, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v2, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->findTextTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I

    move-result v0

    .line 224
    .local v0, "id":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 225
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/GroundImage;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 227
    :cond_3
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v2, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->onEditing(I)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onOk()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 160
    :try_start_0
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v4, v4, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-nez v4, :cond_2

    .line 161
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v4, v4, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 188
    :goto_0
    return v3

    .line 168
    :cond_0
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 170
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v5, v5, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 169
    invoke-virtual {v4, v5, v6}, Lcn/jingling/lib/textbubble/ScreenControl;->getBitmapHasText(Ljava/util/List;Lcn/jingling/lib/textbubble/MyPaint;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4, v0}, Lcn/jingling/lib/textbubble/GroundImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    if-eq v2, v0, :cond_1

    .line 174
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    :cond_1
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/ScreenControl;->clearAddingText()V

    .line 178
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingText(Ljava/lang/Boolean;)V

    .line 180
    const/4 v3, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-nez v2, :cond_0

    .line 275
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 276
    .local v1, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v2, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->findTextTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I

    move-result v0

    .line 277
    .local v0, "id":I
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-boolean v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mIsCanEnterEditing:Z

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    .line 278
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v2, v2, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v2, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->onEditing(I)V

    .line 282
    .end local v0    # "id":I
    .end local v1    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public perform()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0}, Lcn/jingling/lib/textbubble/AddingEffect;->perform()V

    .line 39
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->setNewStateBack()V

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingText(Ljava/lang/Boolean;)V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagMove(Ljava/lang/Boolean;)V

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 45
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->initializeAddingText()V

    .line 58
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGestureDetector:Landroid/view/GestureDetector;

    .line 59
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 63
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 67
    iput-object v1, p0, Lcn/jingling/lib/textbubble/AddingBubbleEffect;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    return-void
.end method
