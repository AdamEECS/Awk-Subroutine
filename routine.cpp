class IntSetStl {
private:
    set<int> S;
public:
    IntSetStl(int maxelms, int maxval) { }
    int size() { return S.size(); }
    void insert(int t) { S.insert(t); }
    void report(int *v)
    {   int j = 0;
        set<int>::iterator i;
        for (i = S.begin(); i != S.end(); ++i) {
            v[j++] = *i;
        }
    }
};

class IntSetArray {
private:
    int n, *x;
public:
    IntSetArray() {
        
    }
};
