.class public Lcom/lenovo/scg/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# static fields
.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final TAG:Ljava/lang/String; = "MovieActivity"


# instance fields
.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

.field private mTreatUpAsBack:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/MovieActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MovieActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 131
    .local v8, "actionBar":Landroid/app/ActionBar;
    if-nez v8, :cond_0

    .line 162
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->setActionBarLogoFromIntent(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {v8, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "title":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 139
    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/MovieActivity$2;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, v8}, Lcom/lenovo/scg/gallery3d/app/MovieActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/content/ContentResolver;Landroid/app/ActionBar;)V

    .line 160
    .local v0, "queryHandler":Landroid/content/AsyncQueryHandler;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setActionBarLogoFromIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const-string v1, "logo-bitmap"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    .local v0, "logo":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    return-void
.end method

.method private setSystemUiVisibility(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 73
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v0, :cond_0

    .line 74
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 84
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 86
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f1006f2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->setSystemUiVisibility(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 92
    .local v7, "intent":Landroid/content/Intent;
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 93
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 94
    const-string/jumbo v0, "treat-up-as-back"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 95
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v3, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .line 104
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 106
    .local v8, "orientation":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 107
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 110
    .end local v8    # "orientation":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 111
    .local v9, "win":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 112
    .local v10, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 113
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void

    .end local v9    # "win":Landroid/view/Window;
    .end local v10    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move v6, v1

    .line 95
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f12000f

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 171
    const v1, 0x7f100b27

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    .local v0, "shareItem":Landroid/view/MenuItem;
    const-string v1, "content"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 178
    :goto_0
    return v3

    .line 176
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 191
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 192
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->finish()V

    .line 203
    :goto_0
    return v1

    .line 195
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_1
    const v2, 0x7f100b27

    if-ne v0, v2, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0f0664

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onPause()V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onResume()V

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mPlayer:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 208
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 216
    return-void
.end method
