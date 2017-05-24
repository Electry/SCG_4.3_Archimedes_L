.class public Lcom/lenovo/scg/gallery3d/edit/SetasListView;
.super Landroid/widget/ListView;
.source "SetasListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    }
.end annotation


# static fields
.field private static final ADAPTER_COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final ADAPTER_COLUMN_LABEL:Ljava/lang/String; = "label"

.field public static final KEY_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final KEY_IMAGE_URI:Ljava/lang/String; = "image_uri"


# instance fields
.field private TAG:Ljava/lang/String;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

.field private mMimeType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "SetasListView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "image/*"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mMimeType:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 173
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "SetasListView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "image/*"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mMimeType:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 173
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;

    .line 64
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->createSetasViews(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "SetasListView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "image/*"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mMimeType:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 173
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "SetasListView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "image/*"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mMimeType:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 173
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    return-object v0
.end method

.method private createSetasViews(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 92
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 94
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v6, "component":Landroid/content/ComponentName;
    const-string v1, "createSetasViews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    name is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v8, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "label"

    invoke-virtual {v8, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->hasThemeCenterCanCatchAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 118
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->hasThemeCenterCanCatchAction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.lenovo.themecenter.wallpaper"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v11, "mLockScreen":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "wallpreviewtype"

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v13, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 124
    .local v10, "lockScreeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 125
    .restart local v8    # "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .restart local v6    # "component":Landroid/content/ComponentName;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 128
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v8, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "label"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0969

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 135
    .restart local v8    # "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .restart local v6    # "component":Landroid/content/ComponentName;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 138
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v8, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "label"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0968

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "lockScreeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "mLockScreen":Landroid/content/Intent;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04016f

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "label"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 153
    .local v0, "adpter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    return-void

    .line 148
    nop

    :array_0
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data
.end method

.method private hasThemeCenterCanCatchAction()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 77
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lenovo.themecenter.wallpaper.crop"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.themecenter"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 81
    const/4 v3, 0x1

    .line 86
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public setItemClickListener(Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    .line 229
    return-void
.end method
