.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private llBack:Landroid/view/View;

.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    return-object v0
.end method

.method private isTintStatusBar()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getActionBarTheme()I

    move-result v3

    .line 45
    .local v3, "theme":I
    new-array v0, v6, [I

    const v4, 0x7f010010

    aput v4, v0, v5

    .line 48
    .local v0, "attrs":[I
    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 49
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 50
    .local v1, "result":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return v1
.end method

.method private setTranslucentStatus(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 178
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 179
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .line 180
    .local v0, "bits":I
    if-eqz p1, :cond_0

    .line 181
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    return-void

    .line 183
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method protected configActionBar()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->isCustomActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->useCustomActionBar()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->useSystemActionBar()V

    goto :goto_0
.end method

.method protected configTheme()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getTheme()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "theme":Ljava/lang/String;
    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->setTheme(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->setTheme(I)V

    goto :goto_0
.end method

.method protected isCustomActionBar()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 33
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->isCustomActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->requestWindowFeature(I)Z

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->isTintStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->setTranslucentStatus(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onHomeAsUpClicked()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onBackPressed()V

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onBackPressed()V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 226
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onHomeAsUpClicked()V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public setDarkStatusIcon(Z)V
    .locals 8
    .param p1, "islight"    # Z

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 58
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    .line 61
    .local v0, "argsClass":[Ljava/lang/Class;
    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 63
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    .line 64
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    .line 66
    const-string/jumbo v6, "romUI_setDarkStatusIcon"

    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 68
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "argsClass":[Ljava/lang/Class;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "params":[Ljava/lang/Object;
    .end local v5    # "window":Landroid/view/Window;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 4
    .param p1, "titleId"    # I

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 210
    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    .local v0, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    if-nez v1, :cond_0

    .line 213
    const v1, 0x7f100058

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0f09a0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, "title1":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    if-nez v1, :cond_0

    .line 203
    const v1, 0x7f100058

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0f09a0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method protected useCustomActionBar()V
    .locals 21

    .prologue
    .line 104
    const v18, 0x7f10003f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v18, 0x7f100058

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0f0216

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0f09a0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getActionBarTheme()I

    move-result v13

    .line 126
    .local v13, "theme":I
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 127
    .local v17, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x7f010011

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 129
    if-gez v13, :cond_0

    .line 173
    :goto_0
    return-void

    .line 131
    :cond_0
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 141
    .local v10, "attrs":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 142
    .local v12, "ta":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 143
    .local v14, "tintDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 145
    .local v7, "abIsTintStatusBar":Z
    if-eqz v14, :cond_1

    if-eqz v7, :cond_1

    .line 147
    new-instance v15, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 148
    .local v15, "tintManager":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 149
    invoke-virtual {v15, v14}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .end local v15    # "tintManager":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 153
    .local v9, "actionbarBg":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    const v18, 0x7f10003f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x7f010013

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 157
    const/16 v18, 0x2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 158
    .local v4, "abActionBarTitleTextColor":I
    const v18, 0x7f10005a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 159
    .local v16, "title":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 162
    .local v5, "abBackButton":Landroid/graphics/drawable/Drawable;
    const v18, 0x7f100059

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 163
    .local v11, "back":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_3
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 166
    .local v6, "abBackButtonBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_4
    const/16 v18, 0x5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 169
    .local v8, "abStatusBarDarkIcon":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->setDarkStatusIcon(Z)V

    .line 171
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 131
    :array_0
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f01000f
        0x7f010010
    .end array-data
.end method

.method protected useSystemActionBar()V
    .locals 3

    .prologue
    .line 189
    const v1, 0x7f10003f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 192
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 194
    return-void
.end method
