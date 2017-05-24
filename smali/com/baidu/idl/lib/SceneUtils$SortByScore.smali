.class Lcom/baidu/idl/lib/SceneUtils$SortByScore;
.super Ljava/lang/Object;
.source "SceneUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/SceneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortByScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/idl/lib/entity/SceneEntity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/idl/lib/SceneUtils$SortByScore;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/baidu/idl/lib/SceneUtils$SortByScore;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/idl/lib/entity/SceneEntity;Lcom/baidu/idl/lib/entity/SceneEntity;)I
    .locals 2
    .param p1, "o1"    # Lcom/baidu/idl/lib/entity/SceneEntity;
    .param p2, "o2"    # Lcom/baidu/idl/lib/entity/SceneEntity;

    .prologue
    .line 149
    iget v0, p1, Lcom/baidu/idl/lib/entity/SceneEntity;->sceneScores:F

    iget v1, p2, Lcom/baidu/idl/lib/entity/SceneEntity;->sceneScores:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 150
    const/4 v0, -0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/baidu/idl/lib/entity/SceneEntity;

    check-cast p2, Lcom/baidu/idl/lib/entity/SceneEntity;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/idl/lib/SceneUtils$SortByScore;->compare(Lcom/baidu/idl/lib/entity/SceneEntity;Lcom/baidu/idl/lib/entity/SceneEntity;)I

    move-result v0

    return v0
.end method
