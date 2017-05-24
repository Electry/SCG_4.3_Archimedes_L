.class public Lcom/lenovo/scg/camera/ui/RotatableLayout;
.super Landroid/widget/FrameLayout;
.source "RotatableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RotatableLayout"


# instance fields
.field private mInitialOrientation:I

.field private mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

.field private mPrevRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 57
    return-void
.end method

.method private static contains(II)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "mask"    # I

    .prologue
    .line 149
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static flip(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 241
    invoke-static {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public static isClockWiseRotation(II)Z
    .locals 1
    .param p0, "prevRotation"    # I
    .param p1, "currentRotation"    # I

    .prologue
    .line 134
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-ne p0, v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isClockwise"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-static {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateCounterClockwise(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static rotateClockwise(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    .local v0, "gravity":I
    const/4 v7, 0x0

    .line 158
    .local v7, "ngravity":I
    const/4 v9, 0x3

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    or-int/lit8 v7, v7, 0x30

    .line 161
    :cond_1
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 162
    or-int/lit8 v7, v7, 0x50

    .line 164
    :cond_2
    const/16 v9, 0x30

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 165
    or-int/lit8 v7, v7, 0x5

    .line 167
    :cond_3
    const/16 v9, 0x50

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 168
    or-int/lit8 v7, v7, 0x3

    .line 170
    :cond_4
    const/16 v9, 0x11

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 171
    or-int/lit8 v7, v7, 0x11

    .line 173
    :cond_5
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 174
    or-int/lit8 v7, v7, 0x10

    .line 176
    :cond_6
    const/16 v9, 0x10

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 177
    or-int/lit8 v7, v7, 0x1

    .line 179
    :cond_7
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 181
    .local v4, "ml":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 182
    .local v5, "mr":I
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 183
    .local v6, "mt":I
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 184
    .local v3, "mb":I
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 185
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 186
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 187
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 188
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 189
    .local v8, "width":I
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 190
    .local v1, "height":I
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 191
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 192
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static rotateCounterClockwise(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    .local v0, "gravity":I
    const/4 v7, 0x0

    .line 201
    .local v7, "ngravity":I
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 202
    or-int/lit8 v7, v7, 0x30

    .line 204
    :cond_1
    const/4 v9, 0x3

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 205
    or-int/lit8 v7, v7, 0x50

    .line 207
    :cond_2
    const/16 v9, 0x30

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 208
    or-int/lit8 v7, v7, 0x3

    .line 210
    :cond_3
    const/16 v9, 0x50

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 211
    or-int/lit8 v7, v7, 0x5

    .line 213
    :cond_4
    const/16 v9, 0x11

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 214
    or-int/lit8 v7, v7, 0x11

    .line 216
    :cond_5
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 217
    or-int/lit8 v7, v7, 0x10

    .line 219
    :cond_6
    const/16 v9, 0x10

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 220
    or-int/lit8 v7, v7, 0x1

    .line 222
    :cond_7
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 224
    .local v4, "ml":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 225
    .local v5, "mr":I
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    .local v6, "mt":I
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 227
    .local v3, "mb":I
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 228
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 229
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 231
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 232
    .local v8, "width":I
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 233
    .local v1, "height":I
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected flipChildren()V
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getChildCount()I

    move-result v1

    .line 122
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 123
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->flip(Landroid/view/View;)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    const/16 v4, 0xb4

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;->onRotation(I)V

    .line 127
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 74
    .local v0, "currentOrientation":I
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateLayout(Z)V

    goto :goto_0

    .line 79
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateLayout(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 88
    .local v1, "rotation":I
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    sub-int v2, v1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 89
    iput v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->isClockWiseRotation(II)Z

    move-result v0

    .line 93
    .local v0, "clockwise":Z
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateLayout(Z)V

    .line 94
    iput v1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mPrevRotation:I

    goto :goto_0
.end method

.method protected rotateChildren(Z)V
    .locals 5
    .param p1, "clockwise"    # Z

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getChildCount()I

    move-result v1

    .line 112
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 113
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotate(Landroid/view/View;Z)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    if-eqz p1, :cond_2

    const/16 v3, 0x5a

    :goto_1
    invoke-interface {v4, v3}, Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;->onRotation(I)V

    .line 117
    :cond_1
    return-void

    .line 116
    :cond_2
    const/16 v3, 0x10e

    goto :goto_1
.end method

.method protected rotateLayout(Z)V
    .locals 3
    .param p1, "clockwise"    # Z

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .local v2, "width":I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .local v0, "height":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->rotateChildren(Z)V

    .line 108
    return-void
.end method

.method public setRotationListener(Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/RotatableLayout;->mListener:Lcom/lenovo/scg/camera/ui/RotatableLayout$RotationListener;

    .line 131
    return-void
.end method
