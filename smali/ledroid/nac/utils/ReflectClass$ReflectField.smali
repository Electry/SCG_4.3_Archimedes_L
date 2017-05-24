.class public final Lledroid/nac/utils/ReflectClass$ReflectField;
.super Ljava/lang/Object;
.source "ReflectClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/nac/utils/ReflectClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lledroid/nac/utils/ReflectClass$ReflectField;, "Lledroid/nac/utils/ReflectClass$ReflectField<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lledroid/nac/utils/ReflectClass$ReflectField;->mField:Ljava/lang/reflect/Field;

    .line 138
    iget-object v1, p0, Lledroid/nac/utils/ReflectClass$ReflectField;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lledroid/nac/utils/ReflectClass$ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Lledroid/nac/utils/ReflectClass$MemberAccessController;

    iget-object v1, p0, Lledroid/nac/utils/ReflectClass$ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lledroid/nac/utils/ReflectClass$MemberAccessController;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 140
    .local v0, "accessController":Lledroid/nac/utils/ReflectClass$MemberAccessController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lledroid/nac/utils/ReflectClass$MemberAccessController;->setAccessible(Z)V

    .line 142
    .end local v0    # "accessController":Lledroid/nac/utils/ReflectClass$MemberAccessController;
    :cond_0
    return-void
.end method

.method private suppressedCast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lledroid/nac/utils/ReflectClass$ReflectField;, "Lledroid/nac/utils/ReflectClass$ReflectField<TT;>;"
    return-object p1
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lledroid/nac/utils/ReflectClass$ReflectField;, "Lledroid/nac/utils/ReflectClass$ReflectField<TT;>;"
    :try_start_0
    iget-object v0, p0, Lledroid/nac/utils/ReflectClass$ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lledroid/nac/utils/ReflectClass$ReflectField;->suppressedCast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 150
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    goto :goto_1
.end method
