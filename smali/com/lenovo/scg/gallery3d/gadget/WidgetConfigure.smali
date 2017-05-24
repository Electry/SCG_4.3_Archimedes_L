.class public Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field public static final KEY_WIDGET_TYPE:Ljava/lang/String; = "widget-type"

.field private static MAX_WIDGET_SIDE:I = 0x0

.field private static final REQUEST_CHOOSE_ALBUM:I = 0x2

.field private static final REQUEST_CROP_IMAGE:I = 0x3

.field private static final REQUEST_GET_PHOTO:I = 0x4

.field private static final REQUEST_WIDGET_TYPE:I = 0x1

.field public static final RESULT_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetConfigure"

.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    .line 68
    const/16 v0, 0x168

    sput v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    return-void
.end method

.method private setChoosenAlbum(Landroid/content/Intent;)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 169
    const-string v8, "album-path"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "albumPath":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 172
    .local v3, "helper":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;
    const/4 v7, 0x0

    .line 173
    .local v7, "relativePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 174
    .local v2, "galleryApp":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    .line 175
    .local v4, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    .line 176
    .local v6, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 177
    .local v5, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    instance-of v8, v5, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;

    if-eqz v8, :cond_0

    .line 178
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "bucketId":I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getRelativePath(I)Ljava/lang/String;

    move-result-object v7

    .line 182
    const-string v8, "WidgetConfigure"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting widget, album path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", relative path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "bucketId":I
    :cond_0
    iget v8, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9, v0, v7}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;Ljava/lang/String;)Z

    .line 185
    iget v8, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 189
    return-void

    .line 187
    .end local v2    # "galleryApp":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .end local v4    # "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v5    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v6    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v8
.end method

.method private setChoosenPhoto(Landroid/content/Intent;)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 146
    .local v2, "res":Landroid/content/res/Resources;
    const v7, 0x7f0904a6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 147
    .local v6, "width":F
    const v7, 0x7f0904a7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 151
    .local v0, "height":F
    sget v7, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v8, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v8, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 153
    .local v3, "scale":F
    mul-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 154
    .local v5, "widgetWidth":I
    mul-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 156
    .local v4, "widgetHeight":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 160
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v8, "outputX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "outputY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "return-data"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 165
    .local v1, "request":Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    return-void
.end method

.method private setPhotoWidget(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 133
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "helper":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    .line 137
    iget v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setWidgetType(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f1002cd

    .line 192
    const-string/jumbo v4, "widget-type"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 193
    .local v3, "widgetType":I
    const v4, 0x7f1002cb

    if-ne v3, v4, :cond_0

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumPicker;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :cond_0
    if-ne v3, v5, :cond_1

    .line 197
    new-instance v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "helper":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;Ljava/lang/String;)Z

    .line 200
    iget v4, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v4

    .line 206
    .end local v0    # "helper":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/app/DialogPicker;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "image/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 207
    .local v2, "request":Landroid/content/Intent;
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateWidgetAndFinish(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 104
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v2, p1}, Lcom/lenovo/scg/gallery3d/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 105
    .local v1, "views":Landroid/widget/RemoteViews;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 106
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 121
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setChoosenAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 123
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setChoosenPhoto(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 125
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setPhotoWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 79
    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v1, v3, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    if-nez p1, :cond_2

    .line 86
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    if-eqz v1, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "widget-type"

    const v3, 0x7f1002cc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v1, "picked-item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onSaveInstanceStates(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string/jumbo v0, "picked-item"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    return-void
.end method
