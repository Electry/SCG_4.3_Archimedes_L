.class public Lcn/jingling/lib/filters/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field private static GET_FILTER_ERROR_MSG:Ljava/lang/String;

.field private static GET_FILTER_TAG:Ljava/lang/String;

.field private static final sGlobalFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jingling/lib/filters/GlobalFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sOneKeyFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jingling/lib/filters/OneKeyFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPartialFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jingling/lib/filters/PartialFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRealsizeFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jingling/lib/filters/RealsizeFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "FilterFactory"

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_TAG:Ljava/lang/String;

    .line 78
    const-string v0, "Filter Instantiation Error: Can\'t find such filter! Please check the correctness of your label!"

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_ERROR_MSG:Ljava/lang/String;

    .line 80
    new-instance v0, Lcn/jingling/lib/filters/FilterFactory$1;

    invoke-direct {v0}, Lcn/jingling/lib/filters/FilterFactory$1;-><init>()V

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->sOneKeyFilters:Ljava/util/Map;

    .line 324
    new-instance v0, Lcn/jingling/lib/filters/FilterFactory$2;

    invoke-direct {v0}, Lcn/jingling/lib/filters/FilterFactory$2;-><init>()V

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->sGlobalFilters:Ljava/util/Map;

    .line 350
    new-instance v0, Lcn/jingling/lib/filters/FilterFactory$3;

    invoke-direct {v0}, Lcn/jingling/lib/filters/FilterFactory$3;-><init>()V

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->sPartialFilters:Ljava/util/Map;

    .line 372
    new-instance v0, Lcn/jingling/lib/filters/FilterFactory$4;

    invoke-direct {v0}, Lcn/jingling/lib/filters/FilterFactory$4;-><init>()V

    sput-object v0, Lcn/jingling/lib/filters/FilterFactory;->sRealsizeFilters:Ljava/util/Map;

    .line 434
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGlobalFilter(Landroid/content/Context;Ljava/lang/String;)Lcn/jingling/lib/filters/GlobalFilter;
    .locals 4
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {p0}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 467
    :try_start_0
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sGlobalFilters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/GlobalFilter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 478
    :goto_0
    return-object v2

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 478
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 474
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_ERROR_MSG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Global Filter Error: your label is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createOneKeyFilter(Landroid/content/Context;Ljava/lang/String;)Lcn/jingling/lib/filters/OneKeyFilter;
    .locals 4
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-static {p0}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 441
    :try_start_0
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sOneKeyFilters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/OneKeyFilter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 458
    :goto_0
    return-object v2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 454
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    :try_start_1
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sOneKeyFilters:Ljava/util/Map;

    const-string/jumbo v3, "original"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/OneKeyFilter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 444
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 446
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_ERROR_MSG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " OneKey Filter Error: your label is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createPartialFilter(Landroid/content/Context;Ljava/lang/String;)Lcn/jingling/lib/filters/PartialFilter;
    .locals 4
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {p0}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 485
    :try_start_0
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sPartialFilters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/PartialFilter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 496
    :goto_0
    return-object v2

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 496
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 492
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_ERROR_MSG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Partial Filter Error: your label is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createRealsizeFilter(Landroid/content/Context;Ljava/lang/String;)Lcn/jingling/lib/filters/RealsizeFilter;
    .locals 4
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {p0}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 503
    :try_start_0
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sRealsizeFilters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/RealsizeFilter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 520
    :goto_0
    return-object v2

    .line 504
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 516
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    :try_start_1
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->sRealsizeFilters:Ljava/util/Map;

    const-string/jumbo v3, "rsoriginal"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/filters/RealsizeFilter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 507
    :catch_1
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 510
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_ERROR_MSG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Realsize Filter Error: your label is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcn/jingling/lib/filters/FilterFactory;->GET_FILTER_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    const/4 v2, 0x0

    goto :goto_0
.end method
