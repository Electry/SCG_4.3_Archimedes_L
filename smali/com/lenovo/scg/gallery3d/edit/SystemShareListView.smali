.class public Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
.super Landroid/widget/ListView;
.source "SystemShareListView.java"


# static fields
.field private static final ADAPTER_COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final ADAPTER_COLUMN_LABEL:Ljava/lang/String; = "label"


# instance fields
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

.field private mContext:Landroid/app/Activity;

.field private mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

.field private mMimeType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v1, "image/jpeg"

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 113
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mContext:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mUri:Landroid/net/Uri;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "getType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->createShareMenu(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 113
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 113
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 113
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    return-object v0
.end method

.method private createShareMenu(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x2

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 70
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v12, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 71
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 74
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v10

    .line 75
    .local v10, "isRow":Z
    if-nez v10, :cond_2

    .line 76
    const-string v1, "com.tencent.mm"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const-string v1, "com.lenovo.anyshare"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.ideafriend"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v6, "component":Landroid/content/ComponentName;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v8, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "label"

    invoke-virtual {v8, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "isRow":Z
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04000e

    new-array v4, v13, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "label"

    aput-object v5, v4, v1

    new-array v5, v13, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 93
    .local v0, "adpter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void

    .line 90
    :array_0
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data
.end method


# virtual methods
.method public setItemClickListener(Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    .line 131
    return-void
.end method
